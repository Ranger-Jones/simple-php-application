<?php
class Notifications extends Controller
{
    function index()
    {
        if (!Auth::isLoggedIn()) {
            $this->redirect("login");
        }

        $notificationModel = new Notification();
        $notifications = $notificationModel->find("uid", Auth::uid(), "added_date", true);


        $this->view("notifications/notifications", ["notifications" => $notifications,]);
    }

    function delete($notificationId)
    {
        $notificationModel = new Notification();
        $notificationRows = $notificationModel->find("notification_id", $notificationId);

        if ($notificationRows) {
            $notificationModel->delete($notificationRows[0]->id);
        }

        $this->redirect("notifications");
    }
}
