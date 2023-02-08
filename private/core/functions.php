<?php

function get_var($key)
{
    if (isset($_POST[$key])) {
        return $_POST[$key];
    }
}

function get_selected($key, $value)
{
    if (isset($_POST[$key])) {
        if ($_POST[$key] == $value) {
            return "selected";
        }
    }
}

function esc($var)
{
    return htmlspecialchars($var);
}

function random_string($length)
{
    $array = array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    $text = "";

    for ($x = 0; $x < $length; $x++) {

        $random = rand(0, 61);
        $text .= $array[$random];
    }

    return $text;
}

function get_image($imageId, $destination, $fallbackImage = "https://media1.faz.net/ppmedia/aktuell/1010445575/1.6814999/default-retina/ein-legaler-rave-im-jahr-2017.jpg")
{
    $imageModel = new Image;
    $imageRows = $imageModel->find("image_id", $imageId);
    $imageRow = $imageRows ? $imageRows[0] : false;
    $imageSrc = "";

    if ($imageRow) {
        $imageSrc = ASSETS . "uploads/" . $destination . "/" . $imageRow->image_id . "." . $imageRow->image_type;
    } else {
        $imageSrc = $fallbackImage;
    }

    return $imageSrc;
}
