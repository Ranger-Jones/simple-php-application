<?php

class GroupMember extends Model
{
    protected $beforeInsert = [
        "set_initial_values",
    ];

    protected $allowedColumns = [
        "uid",
        "role",
        "group_id"
    ];

    protected $table = "group_members";


    public function set_initial_values($data)
    {
        $data["joined_at"] = date("Y-m-d H:i:s");
        return $data;
    }
}
