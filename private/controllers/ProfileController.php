<?php
class Profile extends Controller
{
    function index($arg1 = 0, $arg2 = 0,)
    {
        if(!Auth::isLoggedIn()){
            $this->redirect("login");
        }

        $createdEvents = [];
        $joinedEvents = [];
        $likedEvents = [];

        $profilePictureSrc = "";
        $uid = "";

        $myprofile = false;
        $isFriend = false;
        $friendRequestPending = false;

        $eventTypes = [0, 1, 2];

        $eventType = 0;
        

        $event = new Event();
        $userModel = new User();
        $joinedEventsModel = new JoinedEvent();
        $likedEventsModel = new LikedEvent();
        $friendModel = new Friend();

        if($arg1 != "" && !in_array($arg1, $eventTypes)){
            $uid = $arg1;
            $eventType = $arg2;
            $user = $userModel->find("uid", $arg1)[0];
            if($arg1 == Auth::uid()){
                $this->redirect("profile");
            }
        } else {
            $myprofile = true;
            $eventType = $arg1;
            
            $user = Auth::getUser();
        }

        $friendsA = $friendModel->find("uid_a", $user->uid);
        $friendsB = $friendModel->find("uid_b", $user->uid);

        $friendsUids = [];

        foreach($friendsA as $friend){
            if ($friend->pending == 0) {
                array_push($friendsUids, $friend->uid_b);
            }
            if (!$myprofile) {
                if ($friend->uid_b == Auth::uid()){
                    if($friend->pending == 1){
                        $friendRequestPending = true;
                    }else{
                        $isFriend = true;
                    }
                }
                  
            }
        }

        foreach($friendsB as $friend){
            if($friend->pending == 0){
            array_push($friendsUids, $friend->uid_a);
        }

            if (!$myprofile) {
                if ($friend->uid_a == Auth::uid()) {
                    if ($friend->pending == 1) {
                        $friendRequestPending = true;
                    } else {
                        $isFriend = true;
                    }
                }
            }
        }

        
        
        switch($eventType){
            case 0:
                $createdEvents = $event->find("createdBy", $user->uid);
                if (!$createdEvents) {
                    $createdEvents = array();
                }
            case 1:
                $likedEventsRows = $likedEventsModel->find("uid", $user->uid);
                if(!$likedEventsRows){
                    $likedEvents = array();
                }else{
                    foreach ($likedEventsRows as $likedEventsRow){
                        $likedEvent = $event->find("event_id", $likedEventsRow->event_id);
                        if($likedEvent){
                            array_push($likedEvents, $likedEvent[0]);
                        }
                    }
                }
            case 2:
                $joinedEventsRows = $joinedEventsModel->find("uid", $user->uid);
                if (!$joinedEventsRows) {
                    $joinedEvents = array();
                } else {
                    foreach ($joinedEventsRows as $joinedEventsRow) {
                        $joinedEvent = $event->find("event_id", $joinedEventsRow->event_id);
                        if ($joinedEvent) {
                            array_push($joinedEvents, $joinedEvent[0]);
                        }
                    }
                }

        }
        
        $joinedEventsRow = $joinedEventsModel->find("uid", $uid);

        

        $profilePictureSrc = get_image(
            $user->photoUrl,
            "user_photos"
        );

        $this->view("profile/profile", [
            "createdEvents" => $createdEvents,
            "profilePictureSrc" => $profilePictureSrc,
            "eventType" => $eventType,
            "joinedEvents" => $joinedEvents,
            "likedEvents" => $likedEvents,
            "user" => $user,
            "myprofile" => $myprofile,
            "friendsUids" => $friendsUids,
            "friendRequestPending" => $friendRequestPending,
            "isFriend" => $isFriend,
        ]);
    }

    function accept($uid){
        if (!Auth::isLoggedIn()) {
            $this->redirect("login");
        }

        $friendModel = new Friend();
        $notificationModel = new Notification();
        $friendRowsA = $friendModel->find("uid_a", $uid);
        $accepted = false;
        $updateData["pending"] = 0;

        foreach($friendRowsA as $friendRow){
            if($friendRow->uid_b == Auth::uid()){
                $friendModel->update($friendRow->id, $updateData);
                $accepted = true;
            }
        }

        if(!$accepted){
            $friendRowsB = $friendModel->find("uid_b", $uid);
            foreach ($friendRowsB as $friendRow) {
                if ($friendRow->uid_a == Auth::uid()) {
                    $friendModel->update($friendRow->id, $updateData);
                    $accepted = true;
                }
            }
        }

        $notificationRows = $notificationModel->find("uid", Auth::uid());

        foreach($notificationRows as $notificationRow) {
            if($notificationRow->destination_id == $uid && $notificationRow->type == "friend_request"){
                $notificationModel->delete($notificationRow->id);
            }
        }

        $notificationData["uid"] = $uid;
        $notificationData["type"] = "info";
        $notificationData["content"] = Auth::username() . " just accepted your friend request, you can begin a new friendship now!";
        $notificationData["destination_id"] = Auth::uid();
        $notificationData["destination_type"] = "profile";

        $notificationModel->insert($notificationData);
        $this->redirect("profile/".$uid);
    }

    function decline($uid){
        if (!Auth::isLoggedIn()) {
            $this->redirect("login");
        }

        $friendModel = new Friend();
        $notificationModel = new Notification();
        $friendRowsA = $friendModel->find("uid_a", $uid);
        $declined = false;

        foreach($friendRowsA as $friendRow){
            if($friendRow->uid_b == Auth::uid()){
                $friendModel->delete($friendRow->id);
                $declined = true;
            }
        }

        if(!$declined){
            $friendRowsB = $friendModel->find("uid_b", $uid);
            foreach ($friendRowsB as $friendRow) {
                if ($friendRow->uid_a == Auth::uid()) {
                    $friendModel->delete($friendRow->id);
                    $declined = true;
                }
            }
        }

        $notificationRows = $notificationModel->find("uid", Auth::uid());

        foreach($notificationRows as $notificationRow) {
            if($notificationRow->destination_id == $uid && $notificationRow->type == "friend_request"){
                $notificationModel->delete($notificationRow->id);
            }
        }

        $notificationData["uid"] = $uid;
        $notificationData["type"] = "info";
        $notificationData["content"] =  "Unfortunately ". Auth::username()." declined your friend request, go ahead and search some new friends!";
        $notificationData["destination_id"] = Auth::uid();
        $notificationData["destination_type"] = "profile";

        $notificationModel->insert($notificationData);

        $this->redirect("notifications");

    }

    function checkIfFriendRequestAlreadyExists($authFriends, $friendUid, $uidPlace)
    {
        $result["pending"] = false;
        $result["alreadyExists"] = false;

        foreach ($authFriends as $authFriend) {
            if ($uidPlace == 0 && $authFriend->uid_a == $friendUid) {
                $result["alreadyExists"] = true;
                if ($authFriend->pending == 1) {
                    $result["pending"] = true;
                }
            }

            if ($uidPlace == 1 && $authFriend->uid_b == $friendUid) {
                $result["alreadyExists"] = true;
                if ($authFriend->pending == 1) {
                    $result["pending"] = true;
                }
            }
        }
        return $result;
    }

    function add($uid = "", $eventType = 0,){
        if (!Auth::isLoggedIn()) {
            $this->redirect("login");
        }

        $authFriends = [];
        $friendAlreadyExists = false;
        $friendRequestAlreadyPending = false;

        $friendModel = new Friend();
        $notificationModel = new Notification();

        $authFriends = $friendModel->find("uid_a", Auth::uid());

        $result =  $this->checkIfFriendRequestAlreadyExists($authFriends, $uid, 1);

        $friendAlreadyExists = $result["alreadyExists"];
        $friendRequestAlreadyPending = $result["pending"];


        if(!$friendAlreadyExists){
            $authFriends = $friendModel->find("uid_b", Auth::uid());

            $result =  $this->checkIfFriendRequestAlreadyExists($authFriends, $uid, 0);

            $friendAlreadyExists = $result["alreadyExists"];
            $friendRequestAlreadyPending = $result["pending"];
        }

        if($friendAlreadyExists && !$friendRequestAlreadyPending) {
            $friendModel->delete($authFriends[0]->id);
        }

        if(!$friendAlreadyExists){
            $friendData["uid_a"] = Auth::uid();
            $friendData["uid_b"] = $uid;

            $friendModel->insert($friendData);

            $notificationData["uid"] = $uid;
            $notificationData["type"] = "friend_request";
            $notificationData["content"] = Auth::username() . " sended you an friend request, would you like to accept that and begin a new great event friendship?";
            $notificationData["destination_id"] = Auth::uid();
            $notificationData["destination_type"] = "profile";

            $notificationModel->insert($notificationData);
        }

        $this->redirect("profile/" . $uid . "/" . $eventType);
    }
}
