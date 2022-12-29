<?php
class Model extends Database
{
    public $errors = array();

    function __construct()
    {
        if (!property_exists($this, "table")) {
            $this->table = strtolower($this::class . "s");
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
}
