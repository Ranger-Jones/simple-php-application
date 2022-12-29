<?php $this->view("includes/header"); ?>
<div class="container full-height center-horizontal">
    <form method="post">
        <h1>Create an Item</h1>
        <?= AuthInput::picture("Item picture", "", "photoUrl") ?>
        <?= AuthInput::index("Item name", "Item Name", get_var("name"), "name", "text") ?>
        <?= AuthInput::textarea("describe the item", "Item Description", get_var("description"), "description", "text") ?>
        <?= AuthInput::selection("Select an Item type", "Item Type", $itemTypes, "type") ?>
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