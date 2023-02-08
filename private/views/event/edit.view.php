<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <div class="back-icon-container">
        <a href=<?php echo ROOT . "events/" . $eventId . "/" . urlencode($search) ?> class="disable-text-decoration">
            <i class="fa fa-arrow-left back-icon"></i>
        </a>
    </div>
    <div class="column center">
        <form method="post">
            <?php if ($field == "description") : ?>
                <?= AuthInput::textarea("Type a " . ucfirst($field), ucfirst($field), get_var($field), $field, "text") ?>
            <?php elseif ($field == "startAt") : ?>
                <?= AuthInput::datetime("Type a " . ucfirst($field), ucfirst($field), get_var($field), $field, "datetime-local", date("Y-m-d")) ?>
            <?php else : ?>
                <?= AuthInput::index("Type a " . ucfirst($field), ucfirst($field), get_var($field), $field, "text") ?>
            <?php endif; ?>
            <div class="justify-content-end ms-t-2">
                <button class="auth-button" name="update">
                    <h4>Update</h4>
                </button>
            </div>
        </form>
    </div>
</div>



<?php $this->view("includes/footer"); ?>