<?php
class Model extends Database
{

    protected $table = "users";

    function __construct()
    {
    }

    public function where($column, $value)
    {

        $query = "SELECT * FROM $this->table $column = :value";
        return $this->query($query, [
            "value" => $value
        ]);
    }

    public function findAll()
    {
        $query = "SELECT * FROM $this->table";
        return $this->query($query);
    }
}
