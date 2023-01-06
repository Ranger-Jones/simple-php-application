<?php

class Events extends Controller
{
    public $errors = array();
    function index($event_id = "", $search = "")
    {

        $notifications = array();

        if (empty($event_id)) {
            $this->redirect("home");
        } else {
            $event = new Event();
            $event_result = $event->find("event_id", $event_id)[0];
            if (!$event_result) {
                $this->redirect("home");
            } else {
                $joinedEvents = new JoinedEvent();
                $likedEvents = new LikedEvent();

                $uid_list = $joinedEvents->find("event_id", $event_id);
                $liked_users = $likedEvents->find("event_id", $event_id);

                $user_joined = false;
                $user_liked = false;
                $user_role = "";
                $isAdmin = false;
                $user_liked_id = 0;

                if (Auth::isLoggedIn()) {
                    if ($uid_list) {
                        foreach ($uid_list as $uid_row) {
                            if ($uid_row->uid == Auth::uid()) {
                                $user_joined = true;
                                $user_role = $uid_row->role;
                                if ($user_role == "admin") {
                                    $isAdmin = true;
                                }
                            }
                        }
                    }
                    if ($liked_users) {
                        foreach ($liked_users as $liked_row) {
                            if ($liked_row->uid == Auth::uid()) {
                                $user_liked = true;
                                $user_liked_id = $liked_row->id;
                            }
                        }
                    }
                }

                if (isset($_POST["liked"]) && Auth::isLoggedIn() && !$user_liked) {
                    $likedEvents->insert(["uid" => Auth::uid(), "event_id" => $event_id, "liked_date" => date("Y-m-d h:i:s")]);
                    $user_liked = true;
                } else if (isset($_POST["liked"]) && Auth::isLoggedIn() && $user_liked) {
                    $likedEvents->delete($user_liked_id);
                    $user_liked = false;
                }

                if (isset($_POST["joined"]) && $user_joined) {
                    $notifications["Already Joined"] = "You are already joined to the event " . $event_result->title . "!";
                }

                if (isset($_POST["joined"]) && Auth::isLoggedIn() && !$user_joined) {
                    $joinedEvents->insert(["uid" => Auth::uid(), "event_id" => $event_id, "joined_date" => date("Y-m-d h:i:s"), "role" => "raver"]);
                    $notifications["Joining Successful"] = "You are now joined to the event " . $event_result->title . "!";
                    $user_joined = true;
                }


                if (isset($_POST["joined"]) && !Auth::isLoggedIn()) {
                    $notifications["Not logged in"] = "To join an event you need to be logged in! <a href='" . ROOT . "login' class='disable-text-decoration text-bold text-color'>Follow this link to login.</a>";
                }

                $commentModel = new Comment();
                if (!empty($_POST["content"])) {
                    if ($commentModel->validate($_POST)) {
                        $_POST["event_id"] = $event_result->event_id;
                        $commentModel->insert($_POST);
                        $this->redirect("events/" . $event_id . "/" . $search);
                    }
                }

                $uid_list = $joinedEvents->find("event_id", $event_id);
                $liked_users = $likedEvents->find("event_id", $event_id);
                $comments = $commentModel->find("event_id", $event_id, "posted_at", true);

                $thumbnailSrc = get_image(
                    $event_result->thumbnail,
                    "thumbnails"
                );

                if (!empty($search)) {
                    $search = basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
                    $search = urldecode($search);
                }

                $eventItemModel = new EventItem();
                $itemRawModel = new Item();
                $items = $eventItemModel->find("event_id", $event_result->event_id);
                $itemsRaw = $itemRawModel->findAll();

                $this->view(
                    "event/detail",
                    [
                        "event" => $event_result,
                        "uid_list" => $uid_list ? $uid_list : array(),
                        "liked_users" => $liked_users ? $liked_users : array(),
                        "search" => $search,
                        "notifications" => $notifications,
                        "user_joined" => $user_joined,
                        "user_liked" => $user_liked,
                        "thumbnailSrc" => $thumbnailSrc,
                        "items" => $items ? $items : array(),
                        "comments" => $comments ? $comments : array(),
                        "user_role" => $user_role,
                        "isAdmin" => $isAdmin,
                        "itemsRaw" => $itemsRaw ? $itemsRaw : array(),
                    ]
                );
            }
        }
    }

    function comments($eventId = "", $action = "", $commentId = "")
    {
        if (empty($eventId) || !Auth::isLoggedIn()) {
            $this->redirect("home");
        }

        if (empty($action) || empty($commentId)) {
            $this->redirect("events/" . $eventId);
        }

        $this->redirect("events/" . $eventId);
    }

    function edit($eventId = "", $field = "")
    {
        if (empty($eventId) || !Auth::isLoggedIn()) {
            $this->redirect("home");
        }

        if (isset($_POST["update"])) {
            if (!empty($_POST[$field])) {
                $eventModel = new Event();
                $eventRows = $eventModel->find("event_id", $eventId);
                if ($eventRows) {
                    $event = $eventRows[0];
                    $eventModel->update(
                        $event->id,
                        [
                            $field => $_POST[$field],
                            "updatedAt" => date("Y-m-d h:i:s"),
                        ]
                    );
                    $this->redirect("events/" . $eventId);
                }
            }
        }

        $this->view("event/edit", [
            "field" => $field,
            "eventId" => $eventId,
        ]);
    }

    function users($eventId = "", $action = "", $uid = "")
    {
        if (empty($eventId)) {
            $this->redirect("home");
        }

        $eventModel = new Event();
        $eventResult = $eventModel->find("event_id", $eventId)[0];

        if (!$eventResult) {
            $this->redirect("home");
        }

        $joinedEventModel = new JoinedEvent();
        $userModel = new User();


        $joinedEventUserRows = $joinedEventModel->find("event_id", $eventId);
        $joinedUsers = array();
        $userRoles = array();

        $isAdmin = false;

        if ($joinedEventUserRows) {

            foreach ($joinedEventUserRows as $row) {
                $userRow = $userModel->find("uid", $row->uid);
                if ($userRow) {
                    array_push($joinedUsers, $userRow[0]);
                }
                if (!empty($row->role)) {
                    $userRoles[$row->uid] = ucfirst($row->role);
                }
            }
        }

        if (
            !empty($action)
            && !empty($uid)
            && $userRoles[Auth::uid()] == "Admin"
            && $eventResult->createdBy != $uid
        ) {
            $userToUpdate = false;

            foreach ($joinedEventUserRows as $user) {
                if ($user->uid == $uid) {
                    $userToUpdate = $user;
                }
            }

            echo var_dump($userToUpdate);

            if ($userToUpdate) {
                switch ($action) {
                    case "ta":
                        $joinedEventModel->update($userToUpdate->id, ["role" => "admin"]);
                        break;
                    case "tr":
                        $joinedEventModel->update($userToUpdate->id, ["role" => "raver"]);
                        break;
                    case "ru":
                        $joinedEventModel->delete($userToUpdate->id);
                        break;
                }
            }
            $this->redirect("events/users/" . $eventId);
        }

        $this->view("event/users", [
            "joinedUsers" => $joinedUsers,
            "eventId" => $eventId,
            "userRoles" => $userRoles,
            "eventResult" => $eventResult,
        ]);
    }
}
