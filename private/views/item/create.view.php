<?php $this->view("includes/header"); ?>
<div class="container full-height center-horizontal">
    <form method="post">
        <h1>Create an Item</h1>
        <?= AuthInput::picture("Item picture", "", "item_picture") ?>
        <?= AuthInput::index("Item name", "Item Name", get_var("item_name"), "item_name", "text") ?>
        <?= AuthInput::textarea("describe the item", "Item Description", get_var("item_description"), "item_description", "text") ?>
    </form>
</div>
<?php $this->view("includes/footer"); ?>