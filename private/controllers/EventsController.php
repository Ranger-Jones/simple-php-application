<?php

class Events extends Controller
{
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
                $user_liked_id = 0;

                if (Auth::isLoggedIn()) {
                    if ($uid_list) {
                        foreach ($uid_list as $uid_row) {
                            if ($uid_row->uid == Auth::uid()) {
                                $user_joined = true;
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

                if (isset($_POST["joined"]) && Auth::isLoggedIn() && !$user_joined) {
                    $joinedEvents->insert(["uid" => Auth::uid(), "event_id" => $event_id, "joined_date" => date("Y-m-d h:i:s")]);
                    $notifications["Joining Successful"] = "You are now joined to the event " . $event_result->title . "!";
                    $user_joined = true;
                }

                if (isset($_POST["joined"]) && $user_joined) {
                    $notifications["Already Joined"] = "You are already joined to the event " . $event_result->title . "!";
                }

                if (isset($_POST["joined"]) && !Auth::isLoggedIn()) {
                    $notifications["Not logged in"] = "To join an event you need to be logged in! <a href='" . ROOT . "login' class='disable-text-decoration text-bold text-color'>Follow this link to login.</a>";
                }

                $uid_list = $joinedEvents->find("event_id", $event_id);
                $liked_users = $likedEvents->find("event_id", $event_id);

                $thumbnailSrc = get_image(
                    $event_result->thumbnail,
                    "thumbnails"
                );

                if (!empty($search)) {
                    $search = basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
                    $search = urldecode($search);
                }

                $this->view("event/detail", [
                    "event" => $event_result,
                    "uid_list" => $uid_list ? $uid_list : array(),
                    "liked_users" => $liked_users ? $liked_users : array(),
                    "search" => $search,
                    "notifications" => $notifications,
                    "user_joined" => $user_joined,
                    "user_liked" => $user_liked,
                    "thumbnailSrc" => $thumbnailSrc,
                ]);
            }
        }
    }
}