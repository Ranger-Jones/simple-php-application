<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <div class="center-horizontal">
        <div class="column">
            <div class="center-horizontal">
                <h1 class="text-primary">Notifications</h1>
            </div>
            <?php foreach ($notifications as $notification) {
                switch ($notification->type) {
                    case "friend_request":
                        NotificationContainer::friendrequest($notification);
                        break;
                    case "info":
                        NotificationContainer::index($notification);
                        break;
                    case "event_invite_request":
                        NotificationContainer::eventrequest($notification);
                        break;
                    default:
                        echo "Undefined notification type";
                        break;
                }
            } ?>

        </div>
    </div>
</div>
<?php $this->view("includes/footer"); ?>