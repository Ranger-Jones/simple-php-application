<?php
class Thumbnail extends Model
{
    protected $beforeInsert = [
        "make_thumbnail_id",
        "set_initial_values"
    ];

    protected $allowedColumns = [
        "file_name",
    ];

    protected $table = "thumbnails";

    public function make_thumbnail_id($data)
    {
        $data['thumbnail_id'] = random_string(60);

        if ($this->find("thumbnail_id", $data["thumbnail_id"])) {
            return $this->make_thumbnail_id($data);
        }

        return $data;
    }

    public function set_initial_values($data)
    {
        $data["status"] = 1;
        $data["uploaded_on"] = date("Y-m-d h:i:s");
        return $data;
    }
}
