<?php

class EventInfo extends Component
{
    public static function index($event, $user, $likes, $search = "")
    {

        Component::create("eventinfo", [
            "event" => $event,
            "user" => $user,
            "likes" => $likes,
            "search" => $search,
        ]);
    }
}
