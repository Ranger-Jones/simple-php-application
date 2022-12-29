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

    function create()
    {
        $item = new Item();

        $this->view("item/create", ["itemTypes" => $item->itemTypes]);
    }

    function add($event_id = "", $search = "")
    {
        if (empty($event_id)) {
            $this->redirect("home");
        }

        $this->view("item/add");
    }
}
