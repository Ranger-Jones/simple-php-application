<?php
class Notifications extends Controller
{
    function index()
    {
        if (!Auth::isLoggedIn()) {
            $this->redirect("login");
        }

        $notificationModel = new Notification();
        $notifications = $notificationModel->find("uid", Auth::uid());


        $this->view("notifications/notifications", ["notifications"=> $notifications,]);
    }
}
