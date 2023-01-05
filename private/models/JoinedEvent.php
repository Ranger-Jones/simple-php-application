<?php

class JoinedEvent extends Model
{
    protected $allowedColumns = [
        "uid",
        "event_id",
        "joined_date",
        "role"
    ];

    protected $table = "joinedevents";
}
