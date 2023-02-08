<?php $this->view("includes/header"); ?>
<div class="container full-height center-horizontal position-relative">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <form method="post" enctype="multipart/form-data">
        <h1>Create an Item</h1>
        <?= AuthInput::picture("Item picture", "", "photoUrl") ?>
        <?= AuthInput::index("Item name", "Item Name", get_var("name"), "name", "text") ?>
        <?= AuthInput::textarea("describe the item", "Item Description", get_var("description"), "description", "text") ?>
        <?= AuthInput::selection("Select an Item type", "Item Type", $itemTypes, "type") ?>
        <?= AuthInput::selection("Select the unit of measurement", "Unit of Measurement", $amountTypes, "amount_type") ?>
        <?php
        if (!empty($errors)) {
            echo "<p class='text-error'><b>" . array_values($errors)[0] . "</b></p>";
        }
        ?>
        <div class="justify-content-end m-t-1 p-b-2">
            <button class="auth-button" name="create">
                <h4>Create</h4>
            </button>
        </div>
    </form>
</div>
<?php $this->view("includes/footer"); ?>