<?php

class EventInfo extends Component
{
    public static function index($event, $user, $likes, $search = "")
    {
        $thumbnailSrc = get_image(
            "Thumbnail",
            $event->thumbnail,
            "thumbnail_id"
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
