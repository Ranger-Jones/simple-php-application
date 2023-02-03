<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>

    <div class="center-horizontal">
        <div class="row">
            <h1 class="text-primary">Groups</h1>

                <a href="<?= ROOT ?>groups/create" class="disable-text-decoration event-join-button m-l-1 m-t-1 justify-content-center align-items-center">
                    <h4>
                       <i class="fa-solid fa-user-plus"></i><?php echo "Create Group"; ?>
                    </h4>
                </a>
  
        </div>
    </div>
</div>
<?php $this->view("includes/footer"); ?>