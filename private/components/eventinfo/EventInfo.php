<?php

class EventInfo extends Component
{
    public static function index($event, $search = "")
    {
        $thumbnailSrc = get_image(
            $event->thumbnail,
            "thumbnails"
        );

        $user = new User();
        $likedEvents = new LikedEvent();
        $likedUsers = $likedEvents->find("event_id", $event->event_id);
        $likes = $likedUsers ? count($likedUsers) : 0;
        $user = $user->find("uid", $event->createdBy)[0];

        Component::create("eventinfo", [
            "event" => $event,
            "user" => $user,
            "likes" => $likes,
            "thumbnailSrc" => $thumbnailSrc,
            "search" => $search,

        ]);
    }
}
