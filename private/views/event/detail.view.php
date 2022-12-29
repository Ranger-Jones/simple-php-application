<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <div class="back-icon-container">
        <a href=<?php echo empty($search) ? ROOT . "home" : ROOT . "search/" . $search ?> class="disable-text-decoration">
            <i class="fa fa-arrow-left back-icon"></i>
        </a>
    </div>

    <div class="notification-container rounded-corners p-2 <?php echo empty($notifications) ? "" : "active" ?>" id="notification-box">
        <?php foreach ($notifications as $notification_type => $notification_message) : ?>
            <div class="row justify-content-between align-items-center">

                <h3><?= $notification_type ?></h3>
                <a id="notification-close" class="disable-text-decoration">
                    <h3><i class="fa-solid fa-close"></i></h3>
                </a>

            </div>
            <p><?= $notification_message ?></p>
        <?php endforeach; ?>

    </div>
    <div class="row">
        <div class="column w-35 h-100">
            <img src="https://www.nordisch.info/wp-content/uploads/2020/08/rave-party-oslo.jpg" alt="" class="event-detail-image">
        </div>
        <div class="column w-80">
            <div class="m-l-2">
                <div class="row">
                    <h1 class="text-secondary"><?= $event->title ?></h1>
                    <div class="align-items-center m-l-2">
                        <form method="post">
                            <button name="joined" type="submit" class="event-join-button">
                                <h4><i class="fa-solid fa-joint"></i> <?php echo $user_joined ? "Joined" : "Join" ?></h4>
                            </button>
                        </form>
                    </div>
                </div>
                <div class="row justify-content-between w-40">
                    <p>
                        <i class="fa-solid fa-calendar"></i>
                        <?= $event->createdAt ?>
                    </p>
                    <p>
                        <i class="fa-solid fa-map-location-dot"></i>
                        <?= $event->location ?>
                    </p>
                    <form method="post">
                        <button type="submit" name="liked" class="disable-button-style">
                            <p>
                                <i class="fa-solid fa-heart <?php echo $user_liked ? "text-primary" : "" ?>"></i>
                                <?= count($liked_users) ?>
                            </p>
                        </button>
                    </form>
                    <p>
                        <i class="fa-solid fa-user-group"></i>
                        <?= count($uid_list) ?>
                    </p>
                </div>
                <h3>Description</h3>
                <p><?= $event->description ?></p>

                <div class="row align-items-center">
                    <h3>Item</h3>
                    <a href="<?= ROOT ?>items/add/<?= $event->event_id ?>/<?= $search ?>/" class="disable-text-decoration">
                        <h4 class="m-l-1"><i class="fa-solid fa-circle-plus"></i></h4>
                    </a>
                </div>

                <h3>Comments</h3>
                <?= AuthInput::index("", "", "", "", "") ?>
            </div>

        </div>
    </div>
</div>
<script>
    const link = document.getElementById("notification-close");
    const notification = document.getElementById("notification-box");

    link.addEventListener("click", function handleClick() {
        notification.classList.remove("active");
    })
</script>
<?php $this->view("includes/footer"); ?>