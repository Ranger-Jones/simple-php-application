<?php

class Groups extends Controller
{
    public $errors = array();

    function index()
    {
        if (!Auth::isLoggedIn()) {
            $this->redirect("login");
        }

        $groupModel = new Group();
        $groupMembers = new GroupMember();

        $groupMemberRows = $groupMembers->find("uid", Auth::uid(), "joined_at", true);
        $userGroups = [];

        foreach ($groupMemberRows as $groupMemberRow) {
            $groupRow = $groupModel->find("group_id", $groupMemberRow->group_id);
            if ($groupRow) {
                array_push($userGroups, $groupRow[0]);
            }
        }

        $this->view("groups/overview", ["userGroups" => $userGroups,]);
    }

    function create()
    {
        $group = new Group();
        $groupMemberModel = new GroupMember();

        if (count($_POST) > 0 && isset($_POST['create'])) {
            if ($group->validate($_POST)) {
                $_POST = $group->uploadImage($_POST, $_FILES, "thumbnail", "group_thumbnails", "thumbnail", "groupThumbnail");
                if ($_POST) {
                    $_POST["created_by"] = Auth::uid();
                    $group->insert($_POST);

                    $createdGroup = $group->find("created_by", Auth::uid(), "created_at", true)[0];

                    if ($createdGroup) {
                        $groupMemberData["role"] = "admin";
                        $groupMemberData["uid"] = Auth::uid();
                        $groupMemberData["group_id"] = $createdGroup->group_id;
                        $groupMemberModel->insert($groupMemberData);
                    }
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
