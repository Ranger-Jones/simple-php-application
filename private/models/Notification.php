<?php

class Notification extends Model
{
    protected $beforeInsert = [
        "set_initial_values",
        "make_notification_id"
    ];

    protected $allowedColumns = [
        "uid",
        "type",
        "content",
        "destination_id",
        "destination_type",
    ];

    protected $table = "notifications";

    public function make_notification_id($data)
    {
        $data['notification_id'] = random_string(60);

        if ($this->find("notification_id", $data["notification_id"])) {
            return $this->make_notification_id($data);
        }
        return $data;
    }


    public function set_initial_values($data)
    {
        $data["status"] = 1;
        $data["added_date"] = date("Y-m-d h:i:s");
        return $data;
    }
}