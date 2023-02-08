<?php
class Image extends Model
{
    protected $beforeInsert = [
        "set_initial_values"
    ];

    protected $allowedColumns = [
        "original_file_name",
        "image_id",
        "use_case",
        "image_type"
    ];

    protected $table = "images";


    public function set_initial_values($data)
    {
        $data["status"] = 1;
        $data["uploaded_on"] = date("Y-m-d H:i:s");
        return $data;
    }
}
