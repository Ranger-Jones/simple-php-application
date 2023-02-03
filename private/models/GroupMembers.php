<?php

class Notification extends Model
{
    protected $beforeInsert = [
        "set_initial_values",
    ];

    protected $allowedColumns = [
        "uid",
        "role"
    ];

    protected $table = "group_members";


    public function set_initial_values($data)
    {
        $data["joined_at"] = date("Y-m-d h:i:s");
        return $data;
    }
}
