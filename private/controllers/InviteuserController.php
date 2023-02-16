<?php

class InviteUser extends Controller
{
    function index($uid = "", $eventId = "")
    {
        $response = "<i class='fa-solid fa-user-check m-r-1 text-color'></i>Invite";
        if (Auth::isLoggedIn()) {
            if (!empty($uid) && !empty($eventId)) {
                $eventModel = new Event();
                $userModel = new User();
                $joinEventModel = new JoinedEvent();
                $notificationModel = new Notification();

                $userRows = $userModel->find("uid", $uid);

                if ($userRows) {
                    $user = $userRows[0];
                    $eventRows = $eventModel->find("event_id", $eventId);

                    if ($eventRows) {

                        $event = $eventRows[0];
                        $joinedEventRows = $joinEventModel->findWhere("uid", "event_id", $uid, $eventId);
                        if (!$joinedEventRows) {
                            $notificationRows = $notificationModel->findWhere2("destination_id", "type", "uid", $eventId, "event_invite_request", $uid);
                            if (!$notificationRows) {
                                $notificationData["uid"] = $uid;
                                $notificationData["type"] = "event_invite_request";
                                $notificationData["content"] = Auth::username() . " invited you to the event " . $event->title . "! Would you like to accept this request, and have an awesome time with your friend?";
                                $notificationData["destination_id"] = $event->event_id;
                                $notificationData["destination_type"] = "event";

                                $notificationModel->insert($notificationData);
                                $response = "<i class='fa-solid fa-user-minus m-r-1 text-color'></i>Invited";
                            } else {
                                $notification = $notificationRows[0];
                                $notificationModel->delete($notification->id);
                            }
                        } else {
                            $response = "User already joined.";
                        }
                    } else {
                        $response = "Event not found";
                    }
                } else {
                    $response = "User not found";
                }
            }
        } else {
            $response = "Not logged in";
        }

        echo $response;
    }

    function group($uid = "", $groupId = "", ){
        $response = "<i class='fa-solid fa-user-check m-r-1 text-color'></i>Invite";
        if (Auth::isLoggedIn()) {
            if (!empty($uid) && !empty($eventId)) {
                $eventModel = new Event();
                $userModel = new User();
                $joinEventModel = new JoinedEvent();
                $notificationModel = new Notification();

                $userRows = $userModel->find("uid", $uid);

                if ($userRows) {
                    $user = $userRows[0];
                    $eventRows = $eventModel->find("event_id", $eventId);

                    if ($eventRows) {

                        $event = $eventRows[0];
                        $joinedEventRows = $joinEventModel->findWhere("uid", "event_id", $uid, $eventId);
                        if (!$joinedEventRows) {
                            $notificationRows = $notificationModel->findWhere2("destination_id", "type", "uid", $eventId, "event_invite_request", $uid);
                            if (!$notificationRows) {
                                $notificationData["uid"] = $uid;
                                $notificationData["type"] = "event_invite_request";
                                $notificationData["content"] = Auth::username() . " invited you to the event " . $event->title . "! Would you like to accept this request, and have an awesome time with your friend?";
                                $notificationData["destination_id"] = $event->event_id;
                                $notificationData["destination_type"] = "event";

                                $notificationModel->insert($notificationData);
                                $response = "<i class='fa-solid fa-user-minus m-r-1 text-color'></i>Invited";
                            } else {
                                $notification = $notificationRows[0];
                                $notificationModel->delete($notification->id);
                            }
                        } else {
                            $response = "User already joined.";
                        }
                    } else {
                        $response = "Event not found";
                    }
                } else {
                    $response = "User not found";
                }
            }
        } else {
            $response = "Not logged in";
        }

        echo $response;
    }
}
