<?php

class IconLabel extends Component
{
    public static function index($icon, $label, $link = "home", $size = "large", $id = "")
    {
        Component::create("iconlabel", ["icon" => $icon, "label" => $label, "link" => $link, "size" => $size, "id" => $id]);
    }
    public static function button($icon, $label, $size = "large", $id = "")
    {
        Component::create("iconlabel", ["icon" => $icon, "label" => $label, "size" => $size, "id" => $id], "iconlabelbutton");
    }
}
