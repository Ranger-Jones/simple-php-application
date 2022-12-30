<?php

class EventInfo extends Component
{
    public static function index($event, $user, $likes, $search = "")
    {
        $thumbnailSrc = get_image(
            $event->thumbnail,
            "thumbnails"
        );

        Component::create("eventinfo", [
            "event" => $event,
            "user" => $user,
            "likes" => $likes,
            "thumbnailSrc" => $thumbnailSrc,
            "search" => $search,

        ]);
    }
}