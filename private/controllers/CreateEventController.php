<?php
class CreateEvent extends Controller
{
    public $errors = array();
    function index()
    {
        $step = "1";
        $maxSteps = 3;

        $event = new Event();

        if (isset($_POST["back"])) {
            if (!empty($_POST["step"])) {
                $step_tmp =
                    intval($_POST["step"]);
                $step_tmp = $step_tmp - 1;
                $step = strval($step_tmp);
            } else {
                $step = "1";
            }
        }

        if (count($_POST) > 0 && isset($_POST['create'])) {
            if (
                $event->validate($_POST, $_POST["step"], $_FILES) &&
                $_POST["step"] == "1"
            ) {

                $step = "2";
            }

            if (
                $event->validate($_POST, $_POST["step"], $_FILES) &&
                $_POST["step"] == "2"
            ) {
                $step = "3";
            }

            if (
                $event->validate($_POST, $_POST["step"], $_FILES) &&
                $_POST["step"] == "3"
            ) {
                $_POST = $event->uploadImage($_POST, $_FILES, "thumbnail", "thumbnails", "thumbnail", "thumbnail");
                if ($_POST) {
                    $event->insert($_POST);
                    $created_event = $event->find("createdBy", Auth::uid(), "createdAt", true)[0];
                    $joinedEventModel = new JoinedEvent();
                    $joinedEventModel->insert(["uid" => Auth::uid(), "event_id" => $created_event->event_id, "joined_date" => date("Y-m-d h:i:s"), "role" => "admin"]);
                    $this->redirect("events/" . $created_event->event_id);
                } else {
                    $errors = $event->errors;
                }
            }

            if (count($event->errors) != 0) {
                $errors = $event->errors;
                $step = $_POST["step"];
            }
        }


        $this->view("event/create", [
            "step" => $step,
            "maxSteps" => $maxSteps,
            "values" => $_POST,
            "errors" => $errors
        ]);
    }
}
