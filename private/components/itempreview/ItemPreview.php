<?php

class ItemPreview extends Component
{
    public static function index($item, $eventId, $selected = "")
    {
        $itemImageSrc = get_image($item->photoUrl, "item_photos");
        $itemLink = ROOT . "items/add/" . $eventId . "/" . $item->item_id;

        Component::create("itempreview", [
            "item" => $item,
            "itemImageSrc" => $itemImageSrc,
            "selected" => $selected,
            "event" => $eventId,
            "itemLink" => $itemLink,
        ]);
    }
}
