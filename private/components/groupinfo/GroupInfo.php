<?php

class GroupInfo extends Component
{
    public static function index($group)
    {
        $groupThumbnailSrc = get_image($group->thumbnail, "group_thumbnails");

        Component::create("groupinfo", [
            "group" => $group,
            "groupThumbnailSrc" => $groupThumbnailSrc,
        ]);
    }
}
