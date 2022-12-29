<?php $this->view("includes/header"); ?>
<div class="container full-height center-horizontal">
    <form method="post">
        <h1>Create an Item</h1>
        <?= AuthInput::picture("Item picture", "", "item_picture") ?>
        <?= AuthInput::index("Item name", "Item Name", get_var("item_name"), "item_name", "text") ?>
        <?= AuthInput::textarea("describe the item", "Item Description", get_var("item_description"), "item_description", "text") ?>
        <?= AuthInput::selection("Select an Item type", "Item Type", $itemTypes, "item_type") ?>
        <div class="justify-content-end m-t-1">
            <button class="auth-button">
                <h4>Create</h4>
            </button>
        </div>
    </form>
</div>
<?php $this->view("includes/footer"); ?>