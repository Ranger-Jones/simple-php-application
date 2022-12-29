<?php

class IconLabel extends Component
{
    public static function index($icon, $label, $link = "home")
    {
        Component::create("iconlabel", ["icon" => $icon, "label" => $label, "link" => $link]);
    }
}
