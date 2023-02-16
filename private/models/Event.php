<?php
class Event extends Model
{

    protected $beforeInsert = [
        "make_event_id",
        "set_initial_values"
    ];

    protected $allowedColumns = [
        "title",
        "description",
        "thumbnail",
        "startAt",
        "location",
        "public",
    ];

    protected $table = "events";

    private function check_first_step($title, $description)
    {
        $errors = array();
        if ($this->find("title", $title)) {
            $errors["title"] = "The title is already been taken. Choose a new one!";
        }

        if (empty($title)) {
            $errors["title"] = "Please fill in a title!";
        }

        if (empty($description)) {
            $errors["description"] = "Please write a description!";
        }

        return $errors;
    }

    private function check_second_step($startDate, $location)
    {
        $errors = array();

        if (empty($startDate)) {
            $errors["startAt"] = "Please select a 
            starting date!";
        }

        if (empty($location)) {
            $errors["location"] = "Please fill in a location!";
        }

        return $errors;
    }

    private function check_third_step($files)
    {
        $errors = array();

        $target_dir = UPLOADDIR . "thumbnails" . "/";
        $target_file = basename($files["thumbnail"]["name"]);
        $targetFilePath = $target_dir . $target_file;
        $imageExt = strtolower(pathinfo($targetFilePath, PATHINFO_EXTENSION));

        $allowed_file_ext = array("jpg", "jpeg", "png");

        if (empty($files["thumbnail"]["name"])) {
            $errors["thumbnail"] = "Please select a thumbnail!";
        }

        if (!file_exists($files["thumbnail"]["tmp_name"])) {
            $errors["image"] = "Select image to upload.";
        }
        if (!in_array($imageExt, $allowed_file_ext)) {
            $errors["image"] = "Allowed file formats .jpg, .jpeg and .png.";
        } else if ($files["thumbnail"]["size"] > 10097152) {
            $errors["image"] = "File is too large. File size should be less than 10 megabytes.";
        } else if (file_exists($targetFilePath)) {
            $errors["image"] = "File already exists.";
        }

        return $errors;
    }
    public function validate($DATA, $step, $files)
    {
        $this->errors = array();

        switch ($step) {
            case "1":
                $this->errors = $this->check_first_step($DATA["title"], $DATA["description"]);
                break;
            case "2":
                $this->errors = $this->check_second_step($DATA["startAt"], $DATA["location"]);
                break;
            case "3":
                $this->errors = $this->check_third_step($files);
                break;
        }

        if (count($this->errors) == 0) {
            return true;
        }

        return false;
    }

    public function make_event_id($data)
    {
        $data['event_id'] = random_string(60);

        if ($this->find("event_id", $data["event_id"])) {
            return $this->make_event_id($data);
        }
        return $data;
    }

    public function hash_password($data)
    {
        $data["password"] = password_hash($data["password"], PASSWORD_DEFAULT);
        return $data;
    }

    public function set_status($data)
    {
        if (!empty($data["public"])) {
            $data["public"] = 1;
        } else {
            $data["public"] = 0;
        }

        return $data;
    }

    public function set_initial_values($data)
    {
        $data["type"] = "Casual";
        $data["password"] = "";
        $data["tags"] = "";
        $data["createdAt"] = date("Y-m-d H:i:s");
        $data["updatedAt"] = date("Y-m-d H:i:s");
        $data["createdBy"] = Auth::uid();
        return $data;
    }
}
