<a class="disable-text-decoration" href="<?= ROOT ?>groups/detail/<?= $group->group_id ?>">
    <div class="row">
        <img src="<?= $groupThumbnailSrc ?>" class="group-preview-photo rounded-image" />
        <div class="column m-l-1">
            <h3 class="text-primary"><?= $group->title ?></h3>
            <p><?= $group->description ?></p>
        </div>
    </div>
</a>
<hr class="m-b-1 m-t-1">