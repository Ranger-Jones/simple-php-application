<?php
class Item extends Model
{

    protected $beforeInsert = ["make_item_id", "set_initial_values"];
    protected $allowedColumns = [
        "name",
        "type",
        "description",
        "photoUrl"
    ];

    public $itemTypes = [
        "drink" => "Getränk",
        "food" => "Essen",
        "gadget" => "Gadget", 
        "musicBox" => "MusikBox/Soundanlage"
    ];

    protected $table = "items";

    public function validate($DATA)
    {
    }

    public function make_item_id($data)
    {
        $data['item_id'] = random_string(60);

        if ($this->find("item_id", $data["item_id"])) {
            return $this->make_item_id($data);
        }
        return $data;
    }

    public function set_initial_values($data)
    {
        $data["createdBy"] = Auth::uid();
        $data["createdAt"] = date("Y-m-d h:i:s");
        $data["updatedAt"] = date("Y-m-d h:i:s");
        $data["accepted"] = true;
        return $data;
    }
}
