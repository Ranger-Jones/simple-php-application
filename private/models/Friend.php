<?php

class Friend extends Model
{
    protected $allowedColumns = [
        "uid_a",
        "uid_b",
    ];

    protected $beforeInsert = [
        "set_initial_values"
    ];

    protected $table = "friends";

    public function set_initial_values($data)
    {
        $data["pending"] = 1;
        $data["friends_since"] = date("Y-m-d h:i:s");
        return $data;
    }
}
