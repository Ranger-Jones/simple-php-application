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
                $targetDir = $_SERVER['DOCUMENT_ROOT']."/ravingbooth/public/assets/uploads/";
                $fileName = basename($_FILES["thumbnail"]["name"]);
                $targetFilePath = $targetDir . $fileName;
                $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);
                $thumbnail_id = "";

                $allowTypes = array('jpg', 'png', 'jpeg', 'gif', 'pdf');
                if (in_array(strtolower($fileType), $allowTypes)) {
                    // Upload file to server
                    $upload = move_uploaded_file($_FILES["thumbnail"]["tmp_name"], $targetFilePath);
                    echo $upload;
                    if ($upload) {
                        // Insert image file name into database
                        $thumbnail = new Thumbnail();

                        $thumbnail_data["file_name"] = $_FILES["thumbnail"]["name"];
                        $thumbnail_data = $thumbnail->make_thumbnail_id($thumbnail_data);
                        $_POST["thumbnail"] = $thumbnail_data["thumbnail_id"];

                        $insert = $thumbnail->insert($thumbnail_data);

                        if ($insert) {
                            $statusMsg = "The file " . $fileName . " has been uploaded successfully.";
                        } else {
                            $statusMsg = "File upload failed, please try again.";
                        }
                    } else {
                        $statusMsg = "Not uploaded because of error #" . $_FILES["thumbnail"]["error"];                    }
                } else {
                    $statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
                }
                echo $statusMsg;
                $event->insert($_POST);

                //$this->redirect("home");
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
