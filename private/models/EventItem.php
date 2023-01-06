<?php
class EventItem extends Model
{

    protected $beforeInsert = [
        "make_event_item_id",
        "set_initial_values"
    ];
    protected $allowedColumns = [
        "item_name",
        "amount_type",
        "comment",
        "amount",
        "event_id",
        "item_id",
    ];

    public $amount_types = [
        "l" => "l",
        "ml" => "ml",
    ];

    protected $table = "event_items";

    public function validate($DATA)
    {
        $this->errors = array();

        if (empty($DATA["amount"])) {
            $this->errors["amount"] = "Please type an item amount";
        }

        if (count($this->errors) == 0) {
            return true;
        }

        return false;
    }

    public function make_event_item_id($data)
    {
        $data['event_item_id'] = random_string(60);

        if ($this->find("event_item_id", $data["event_item_id"])) {
            return $this->make_event_item_id($data);
        }

        return $data;
    }

    public function set_initial_values($data)
    {
        $data["added_by"] = Auth::uid();
        $data["added_date"] = date("Y-m-d h:i:s");
        return $data;
    }
}
