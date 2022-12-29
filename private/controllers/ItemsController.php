<?php

class Items extends Controller
{
    function index($event_id = "", $search = "")
    {
        if (empty($event_id)) {
            $this->redirect("home");
        }

        $this->view("item/detail");
    }

    function create($event_id = "", $search = "")
    {
        if (empty($event_id)) {
            $this->redirect("home");
        }

        $this->view("item/create");
    }

    function add($event_id = "", $search = "")
    {
        if (empty($event_id)) {
            $this->redirect("home");
        }

        $this->view("item/add");
    }
}
