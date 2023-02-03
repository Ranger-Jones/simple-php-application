<?php $this->view("includes/header"); ?>
<div class="container full-height center-horizontal position-relative">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <form method="post" enctype="multipart/form-data">
        <h1>Create a Group</h1>
        <?= AuthInput::picture("Group Thumbnail", "", "thumbnail") ?>
        <?= AuthInput::index("Group title", "Group title", get_var("title"), "title", "text") ?>
        <?= AuthInput::textarea("Group description", "Group description", get_var("description"), "description", "text") ?>
        <?php
        if (!empty($errors)) {
            echo "<p class='text-error'><b>" . array_values($errors)[0] . "</b></p>";
        }
        ?>
        <div class="justify-content-end m-t-1 p-b-2">
            <button class="auth-button" name="create">
                <h4>Create Group</h4>
            </button>
        </div>
    </form>
</div>
<?php $this->view("includes/footer"); ?>