<?php $this->view("includes/header"); ?>
<div class="container full-height center-horizontal position-relative">
    <div class="back-icon-container">
        <a href="<?php echo $item ? ROOT . "items/add/" . $eventId : ROOT . "events/" . $eventId ?>" class="disable-text-decoration">
            <i class="fa fa-arrow-left back-icon"></i>
        </a>
    </div>
    <div class="column m-t-5">
        <h1 class="text-center">Add Item</h1>
        <?php if ($item) : ?>
            <form method="post">
                <h3 class="text-center text-primary text-bold"><?= $item->name ?></h3>
                <?php
                AuthInput::index("Enter the amount", "Amount in " . $item->amount_type, get_var("amount"), "amount", "number");
                AuthInput::textarea("Have you some additional informations", "Comment", get_var("comment"), "comment", "text");
                ?>
                <div class="justify-content-end m-t-1 p-b-2">
                    <button class="auth-button" name="add">
                        <h4>Add</h4>
                    </button>
                </div>
            </form>
        <?php else : ?>

            <div class="display-item-grid">
                <?php foreach ($items as $item) {
                    ItemPreview::index($item, $eventId, "selected-item");
                }

                ?>
            </div>

        <?php endif; ?>
    </div>
</div>
<?php $this->view("includes/footer"); ?>