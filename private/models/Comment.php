<?php
class Comment extends Model
{

    protected $beforeInsert = [
        "make_comment_id",
        "set_initial_values"
    ];
    protected $allowedColumns = [
        "content",
        "event_id"
    ];

    protected $table = "comments";

    public function validate($DATA)
    {
        $this->errors = array();

        if (empty($DATA["content"])) {
            $this->errors["content"] = "Please type an item content";
        }

        if (count($this->errors) == 0) {
            return true;
        }

        return false;
    }

    public function make_comment_id($data)
    {
        $data['comment_id'] = random_string(60);

        if ($this->find("comment_id", $data["comment_id"])) {
            return $this->make_comment_id($data);
        }

        return $data;
    }

    public function set_initial_values($data)
    {
        $data["created_by"] = Auth::uid();
        $data["posted_at"] = date("Y-m-d h:i:s");
        return $data;
    }
}
