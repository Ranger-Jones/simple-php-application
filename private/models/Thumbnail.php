<?php
class Thumbnail extends Model
{
    protected $beforeInsert = [
        "make_uid",
        "set_initial_values"
    ];

    protected $allowedColumns = [
        "file_name",
    ];
}
