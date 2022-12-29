<?php

class Component {
    public static function create($component,$data, $variant = ""){
        extract($data);
        if(!empty($variant) && file_exists("../private/components/" . strtolower($component) . "/" . strtolower($variant) . ".component.php")){
            require("../private/components/" . strtolower($component) . "/" . strtolower($variant) . ".component.php");
        }
        else if (file_exists("../private/components/" . strtolower($component) . "/" . strtolower($component) . ".component.php")) {
            require("../private/components/" . strtolower($component) . "/" . strtolower($component) . ".component.php");
        } else {
            require("../private/views/404.view.php");
        }
    }
}