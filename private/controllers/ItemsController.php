<?php

class Items extends Controller
{
    public $errors = array();

    function index($event_id = "", $search = "")
    {
        if (empty($event_id)) {
            $this->redirect("home");
        }

        $this->view("item/detail");
    }

    function create()
    {
        $item = new Item();

        if (count($_POST) > 0 && isset($_POST['create'])) {
            if ($item->validate($_POST)) {
                $item->insert($_POST);
                $this->redirect("home");
            }

            if (count($item->errors) != 0) {
                $errors = $item->errors;
            }
        }

        $this->view("item/create", [
            "itemTypes" => $item->itemTypes,
            "errors" => $errors,
        ]);
    }

    function add($event_id = "", $search = "")
    {
        if (empty($event_id)) {
            $this->redirect("home");
        }

        $this->view("item/add");
    }
}
