<?php
class Model extends Database
{
    public $errors = array();

    function __construct()
    {
        if (!property_exists($this, "table")) {
            //$this->table = strtolower($this::class . "s");
        }
    }

    public function insert($data)
    {
        if (property_exists($this, "allowedColumns")) {
            foreach ($data as $key => $column) {
                if (!in_array($key, $this->allowedColumns)) {
                    unset($data[$key]);
                }
            }
        }
        if (property_exists($this, "beforeInsert")) {
            foreach ($this->beforeInsert as $func) {
                $data = $this->$func($data);
            }
        }


        $keys = array_keys($data);
        $columns = implode(",", $keys);
        $values = implode(",:", $keys);

        $query = "INSERT INTO $this->table ($columns) values (:$values)";

        return $this->query($query, $data);
    }
    public function update($id, $data)
    {
        $str = "";

        foreach ($data as $key => $value) {
            $str .= $key . "=:" . $key . ",";
        }
        $data["id"] = $id;

        $str = trim($str, ",");

        $query = "UPDATE $this->table SET $str WHERE id = :id";

        return $this->query($query, $data);
    }
    public function delete($id)
    {
        $query = "DELETE FROM $this->table WHERE id = :id";

        $data["id"] = $id;
        return $this->query($query, $data);
    }

    public function findAll()
    {
        $query = "SELECT * FROM $this->table";
        return $this->query($query);
    }

    public function find($column, $value, $orderBy = "", $desc = false)
    {
        $descStr = $desc ? " DESC" : "";
        $orderByStr = empty($orderBy) ? "" : " ORDER BY " . $orderBy;
        $query = "SELECT * FROM $this->table WHERE $column = :value" . $orderByStr . $descStr;
        return $this->query($query, ["value" => $value]);
    }

    public function search($searchColumns, $search)
    {
        $query = "SELECT * FROM $this->table 
                WHERE MATCH ($searchColumns)
                AGAINST ('$search' IN NATURAL LANGUAGE MODE)";
        return $this->query($query);
    }

    public function uploadImage($data, $files, $inputName, $destination, $dataResultName, $useCase)
    {
        $image = new Image();

        do {
            $image_id = random_string(60);

            $result = $image->find("image_id", $image_id);
        } while ($result);

        $target_dir = UPLOADDIR . $destination . "/";
        $target_file = basename($files[$inputName]["name"]);
        $targetFilePath = $target_dir . $target_file;
        $imageExt = strtolower(pathinfo($targetFilePath, PATHINFO_EXTENSION));
        $targetFilePath = $target_dir . $image_id . "." . $imageExt;
        $allowed_file_ext = array("jpg", "jpeg", "png");

        if (!file_exists($files[$inputName]["tmp_name"])) {
            $this->errors["image"] = "Select image to upload.";
        } else if (!in_array($imageExt, $allowed_file_ext)) {
            $this->errors["image"] = "Allowed file formats .jpg, .jpeg and .png.";

        } else if ($files[$inputName]["size"] > 2097152) {
            $this->errors["image"] = "File is too large. File size should be less than 2 megabytes.";
        } else if (file_exists($targetFilePath)) {
            $this->errors["image"] = "File already exists.";
        } else {
            if (move_uploaded_file($files[$inputName]["tmp_name"], $targetFilePath)) {
                $image_data["original_file_name"] = $files[$inputName]["name"];
                $image_data["image_id"] = $image_id;
                $image_data["image_type"] = $imageExt;
                $image_data["use_case"] = $useCase;

                $data[$dataResultName] = $image_id;
                $image->insert($image_data);

                return $data;
            } else {
                $this->errors["image"] = "Image couldn't be uploaded";
            }
        }

        return false;
    }
}
