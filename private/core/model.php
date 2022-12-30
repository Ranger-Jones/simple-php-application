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

    public function find($column, $value)
    {
        $query = "SELECT * FROM $this->table WHERE $column = :value";
        return $this->query($query, ["value" => $value]);
    }

    public function search($searchColumns, $search)
    {
        $query = "SELECT * FROM $this->table 
                WHERE MATCH ($searchColumns)
                AGAINST ('$search' IN NATURAL LANGUAGE MODE)";
        return $this->query($query);
    }

    public function uploadImage($data, $files, $imageModel, $inputName, $destination, $resultName, $dataResultName)
    {
        $image = new $imageModel;

        do {
            $image_id = random_string(60);

            $result = $image->find($resultName, $image_id);
        } while ($result);

        $targetDir = $_SERVER['DOCUMENT_ROOT'] . "/ravingbooth/public/assets/uploads/" . $destination . "/";
        $fileName = basename($files[$inputName]["name"]);
        $targetFilePath = $targetDir . $fileName;
        $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

        $targetFilePath = $targetDir . $image_id . "." . $fileType;

        $allowTypes = array('jpg', 'png', 'jpeg');

        if (in_array(strtolower($fileType), $allowTypes)) {
            $upload = move_uploaded_file($_FILES[$inputName]["tmp_name"], $targetFilePath);
            if ($upload) {
                $image_data["file_name"] = $_FILES[$inputName]["name"];
                $image_data[$resultName] = $image_id;

                $data[$dataResultName] = $image_id;
                $image->insert($image_data);

                return $data;
            } else {
                $this->errors["image"] = "Not uploaded because of error #" . $_FILES["thumbnail"]["error"];
            }
        } else {
            $this->errors["image"] = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
        }

        return false;
    }
}
