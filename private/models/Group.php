<?php

class Group extends Model
{
    protected $beforeInsert = [
        "set_initial_values",
        "make_group_id"
    ];

    protected $allowedColumns = [
        "created_by",
        "title",
        "description",
        "thumbnail",
    ];

    protected $table = "groups";

    public function make_group_id($data)
    {
        $data['group_id'] = random_string(60);

        if ($this->find("group_id", $data["group_id"])) {
            return $this->make_group_id($data);
        }
        return $data;
    }

    public function validate($DATA)
    {
        $this->errors = array();

        if (empty($DATA["title"])) {
            $this->errors["title"] = "Please type an item name";
        }

        if (empty($DATA["description"])) {
            $this->errors["description"] = "Please select an item type";
        }

        if (count($this->errors) == 0) {
            return true;
        }

        return false;
    }


    public function set_initial_values($data)
    {
        $data["created_at"] = date("Y-m-d H:i:s");
        $data["updated_at"] = date("Y-m-d H:i:s");
        return $data;
    }
}
