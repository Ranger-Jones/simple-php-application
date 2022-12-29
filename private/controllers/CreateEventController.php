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
                $event->validate($_POST, $_POST["step"]) &&
                $_POST["step"] == "1"
            ) {

                $step = "2";
            }

            if (
                $event->validate($_POST, $_POST["step"]) &&
                $_POST["step"] == "2"
            ) {
                $step = "3";
            }

            if (
                $event->validate($_POST, $_POST["step"]) &&
                $_POST["step"] == "3"
            ) {
                $event->insert($_POST);
                $this->redirect("home");
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
