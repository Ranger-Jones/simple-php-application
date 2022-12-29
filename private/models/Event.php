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

    private function check_third_step($thumbnail)
    {
        $errors = array();

        if (empty($thumbnail)) {
            $errors["thumbnail"] = "Please select a thumbnail!";
        }

        return $errors;
    }
    public function validate($DATA, $step)
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
                $this->errors = $this->check_third_step($DATA["thumbnail"]);
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
        $data["createdAt"] = date("Y-m-d h:i:s");
        $data["updatedAt"] = date("Y-m-d h:i:s");
        $data["createdBy"] = Auth::uid();
        return $data;
    }
}
