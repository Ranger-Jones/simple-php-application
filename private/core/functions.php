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

function get_image($imageModel, $imageId, $idName)
{
    $imageModel = new $imageModel;
    $imageRows = $imageModel->find($idName, $imageId);
    $imageRow = $imageRows ? $imageRows[0] : false;
    $imageSrc = "";
    $fallbackImage = "https://media1.faz.net/ppmedia/aktuell/1010445575/1.6814999/default-retina/ein-legaler-rave-im-jahr-2017.jpg";

    if ($imageRow) {
        $file_name = $imageRow->file_name;
        $imagetype = pathinfo($file_name, PATHINFO_EXTENSION);
        $imageSrc = ASSETS . "uploads/thumbnails/" . $imageRow->$idName . "." . $imagetype;
    } else {
        $imageSrc = $fallbackImage;
    }

    return $imageSrc;
}
