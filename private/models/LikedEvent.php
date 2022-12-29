<?php

class LikedEvent extends Model
{

    protected $allowedColumns = [
        "uid", "event_id", "liked_date"
    ];
}
