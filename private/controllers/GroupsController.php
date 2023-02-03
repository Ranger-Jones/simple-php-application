<?php

class Groups extends Controller
{
    public $errors = array();

    function index()
    {

        $this->view("groups/detail");
    }

    function create()
    {
        $group = new Group();

        if (count($_POST) > 0 && isset($_POST['create'])) {
            if ($group->validate($_POST)) {
                $_POST = $group->uploadImage($_POST, $_FILES, "thumbnail", "group_thumbnails", "thumbnail", "groupThumbnail");
                if ($_POST) {
                    $_POST["created_by"] = Auth::uid();
                    $group->insert($_POST);
                    $this->redirect("groups");
                } else {
                    $errors = $group->errors;
                }
            }

            if (count($group->errors) != 0) {
                $errors = $group->errors;
            }
        }

        $this->view("groups/create", [
            "errors" => $errors,
        ]);
    }
}
