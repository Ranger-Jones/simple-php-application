<?php
class User extends Model
{

    protected $beforeInsert = [
        "make_uid",
        "hash_password",
        "set_initial_values"
    ];

    protected $allowedColumns = [
        "username",
        "email",
        "password",
        "birthday",
        "student",
        "course",
        "photoUrl"
    ];

    public $courses = [
        "computer_science" => "Informatik",
        "business_informatics" => "Wirtschaftsinformatik",
        "tourism_management" => "Tourismusmanagement",
        "management" => "management"
    ];

    protected $table = "users";


    public function validate($DATA)
    {
        $this->errors = array();
        $emptyFieldsCount = 0;

        if (!preg_match("/^[a-zA-z1-9]+$/", $DATA["username"])) {
            $this->errors["username"] = "Only letters and numbers allowed in username.";
        }

        foreach ($DATA as $key => $val) {
            if (empty($DATA[$key])) {
                $emptyFieldsCount++;
            }
        }


        if (empty($DATA["photoUrl"])) {
            $emptyFieldsCount--;
        }

        if ($this->find("username", $DATA["username"])) {
            $this->errors["username"] = "Your username is already be chosen";
        }

        if ($this->find("email", $DATA["email"])) {
            $this->errors["email"] = "Your email is already used";
        }

        if ($emptyFieldsCount > 0) {
            $this->errors["empty"] = "Please fill in all fields.";
        }

        if (!filter_var($DATA["email"], FILTER_VALIDATE_EMAIL)) {
            $this->errors["email"] = "Email is not valid";
        }


        if ($DATA["password"] != $DATA["password_repeat"]) {
            $this->errors["password"] = "The passwords do not match.";
        }

        if (count($this->errors) == 0) {
            return true;
        }

        return false;
    }

    public function make_uid($data)
    {
        $data['uid'] = random_string(60);

        if ($this->find("uid", $data["uid"])) {
            return $this->make_uid($data);
        }
        return $data;
    }

    public function hash_password($data)
    {
        $data["password"] = password_hash($data["password"], PASSWORD_DEFAULT);
        return $data;
    }

    public static function get_course($course)
    {
        $courses = [
            "computer_science" => "Informatik",
            "business_informatics" => "Wirtschaftsinformatik",
            "tourism_management" => "Tourismusmanagement",
            "management" => "management"
        ];
        
        return $courses[$course];
    }

    public function set_initial_values($data)
    {
        $data["description"] = "";
        $data["level"] = 1;
        $data["location"] = "Hannover";
        $data["createdAt"] = date("Y-m-d h:i:s");
        $data["updatedAt"] = date("Y-m-d h:i:s");
        $data["student"] = true;
        return $data;
    }
}
