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
                $_POST = $item->uploadImage($_POST, $_FILES, "photoUrl", "item_photos", "photoUrl", "itemPicture");
                if ($_POST) {
                    $item->insert($_POST);
                    $this->redirect("home");
                } else {
                    $errors = $item->errors;
                }
            }

            if (count($item->errors) != 0) {
                $errors = $item->errors;
            }
        }

        $this->view("item/create", [
            "itemTypes" => $item->itemTypes,
            "amountTypes" => $item->amount_types,
            "errors" => $errors,
        ]);
    }

    function add($eventId = "", $itemId = "", $search = "")
    {
        if (empty($eventId)) {
            $this->redirect("home");
        }

        $items = array();
        $itemModel = new Item();
        $item = $itemModel->find("item_id", $itemId);

        if ($item) {
            $item = $item[0];
            if (count($_POST) > 0 && isset($_POST["add"])) {
                $eventItemModel = new EventItem();
                if ($eventItemModel->validate($_POST)) {
                    $_POST["event_id"] = $eventId;
                    $_POST["item_id"] = $itemId;
                    $_POST["item_name"] = $item->name;
                    $_POST["amount_type"] = $item->amount_type;

                    $eventItemModel->insert($_POST);
                    $this->redirect("events/" . $eventId);
                }
            }
        } else {
            $items = $itemModel->findAll();
        }

        $this->view("item/add", [
            "eventId" => $eventId,
            "items" => $items,
            "item" => $item,
        ]);
    }
}
