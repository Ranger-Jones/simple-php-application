<?php

class NotificationContainer extends Component
{
    public static function index($notification)
    {
        Component::create("notificationcontainer", [
            "notification" => $notification,
        ]);
    }

    public static function friendrequest($notification)
    {
        Component::create("notificationcontainer", [
            "notification" => $notification,
        ],
    "notifriendrequest");
    }
}
