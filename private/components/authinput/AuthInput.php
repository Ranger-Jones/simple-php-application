<?php

class AuthInput extends Component
{
    public static function index($placeholder, $label, $value, $name, $type)
    {
        Component::create(
            "authinput",
            [
                "placeholder" => $placeholder,
                "label" => $label,
                "value" => $value,
                "name" => $name,
                "type" => $type,
            ]
        );
    }

    public static function toggle($label, $name, $checked, $value)
    {
        Component::create(
            "authinput",
            [
                "label" => $label,
                "name" => $name,
                "value" => $value,
                "checked" => $checked,
            ],
            "authtoggle"
        );
    }

    public static function textarea($placeholder, $label, $value, $name, $type)
    {
        Component::create(
            "authinput",
            [
                "placeholder" => $placeholder,
                "label" => $label,
                "value" => $value,
                "name" => $name,
                "type" => $type,
            ],
            "authtextarea"
        );
    }

    public static function selection($placeholder, $label, $options, $name)
    {
        Component::create(
            "authinput",
            [
                "placeholder" => $placeholder,
                "label" => $label,
                "name" => $name,
                "options" => $options,
            ],
            "authselection"
        );
    }

    public static function picture($label, $src, $name)
    {
        Component::create(
            "authinput",
            [
                "src" => $src,
                "label" => $label,
                "name" => $name,
            ],
            "authpicture"
        );
    }
}
