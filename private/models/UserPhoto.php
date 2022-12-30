<?php
class Thumbnail extends Model
{
    protected $beforeInsert = [
        "set_initial_values"
    ];

    protected $allowedColumns = [
        "file_name",
        "user_photo_id"
    ];

    protected $table = "user_photos";


    public function set_initial_values($data)
    {
        $data["status"] = 1;
        $data["uploaded_on"] = date("Y-m-d h:i:s");
        return $data;
    }
}
