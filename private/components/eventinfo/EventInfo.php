<?php

class EventInfo extends Component
{
    public static function index($event, $user, $search = "")
    {

        Component::create("eventinfo", [
            "event" => $event,
            "user" => $user,
            "search" => $search,
        ]);
    }
}
