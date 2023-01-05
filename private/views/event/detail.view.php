<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <div class="back-icon-container z-10">
        <a href=<?php echo empty($search) ? ROOT . "home" : ROOT . "search/" . urlencode($search) ?> class="disable-text-decoration">
            <i class="fa fa-arrow-left back-icon"></i>
        </a>
    </div>

    <div class="notification-container rounded-corners p-2 z-10 <?php echo empty($notifications) ? "" : "active" ?>" id="notification-box">
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
        <div class="column w-35 h-100 position-relative">
            <img src="<?= $thumbnailSrc ?>" alt="" class="event-detail-image position-fixed">
            <div class="position-fixed w-35" style="top:40%; justify-content: center;">
                <div class="p-1 m-r-4 m-l-2 countdown-text-container rounded-corners row">
                    <h2 id="demo" class="text-bold text-center">Loading...</h2>
                    <?php if ($isAdmin) : ?>
                        <div class="align-items-center m-l-1">
                            <a href="<?= ROOT ?>events/edit/<?= $event->event_id ?>/startAt" class="disable-text-decoration cursor-pointer">
                                <h2 class="change-color-on-hover">
                                    <i class="fa-solid fa-edit"></i>
                                </h2>
                            </a>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <div class="column w-100">
            <div class="ms-l-4">
                <div class="row">
                    <h1 class="text-secondary"><?= $event->title ?></h1>
                    <?php if ($isAdmin) : ?>
                        <div class="align-items-center m-l-1">
                            <a href="<?= ROOT ?>events/edit/<?= $event->event_id ?>/title" class="disable-text-decoration cursor-pointer">
                                <h3 class="change-color-on-hover">
                                    <i class="fa-solid fa-edit"></i>
                                </h3>
                            </a>
                        </div>
                    <?php endif; ?>
                    <div class="align-items-center m-l-2">
                        <form method="post">
                            <button name="joined" type="submit" class="event-join-button">
                                <h4>
                                    <i class="fa-solid fa-joint"></i> <?php echo $user_joined ? "Joined" : "Join" ?>
                                </h4>
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
                    <a class="disable-text-decoration" href="<?= ROOT ?>events/users/<?= $event->event_id ?>">
                        <p>
                            <i class="fa-solid fa-user-group"></i>
                            <?= count($uid_list) ?>
                        </p>
                    </a>
                </div>
                <div class="row">
                    <h3>Description</h3>
                    <?php if ($isAdmin) : ?>
                        <div class="align-items-center m-l-1">
                            <a href="<?= ROOT ?>events/edit/<?= $event->event_id ?>/description" class="disable-text-decoration cursor-pointer">
                                <p class="change-color-on-hover">
                                    <i class="fa-solid fa-edit"></i>
                                </p>
                            </a>
                        </div>
                    <?php endif; ?>
                </div>
                <p><?= $event->description ?></p>


                <div class="row align-items-center">
                    <h3>Item</h3>
                    <?php if ($user_joined) : ?>
                        <a href="<?= ROOT ?>items/add/<?= $event->event_id ?>/<?= $search ?>/" class="disable-text-decoration">
                            <h4 class="m-l-1 change-color-on-hover"><i class="fa-solid fa-circle-plus"></i></h4>
                        </a>
                    <?php endif; ?>
                </div>

                <?php if (!empty($items)) : ?>
                    <table class="justify-space-between" style="width: 80%;">
                        <tr>
                            <th>
                                <h4 class="text-primary text-start">Item</h4>
                            </th>
                            <th>
                                <h4 class="text-primary text-start">Who</h4>
                            </th>
                            <th>
                                <h4 class="text-primary text-start">Amount</h4>
                            </th>
                        </tr>
                        <?php foreach ($items as $item) : ?>
                            <?php
                            $userModel = new User();
                            $user = $userModel->find("uid", $item->added_by)[0];
                            ?>
                            <tr>
                                <td>
                                    <p><?= $item->item_name ?></p>
                                </td>
                                <td>
                                    <p><?= $user->username ?></p>
                                </td>
                                <td>
                                    <p><?= $item->amount ?> <?= $item->amount_type ?></p>
                                </td>
                            </tr>

                        <?php endforeach; ?>

                    </table>
                <?php else : ?>
                    <p>No items added</p>
                <?php endif; ?>

                <form method="post" name="commentForm">
                    <h3>Comments</h3>
                    <?= AuthInput::index("Write something cool", "", get_var("content"), "content", "text", "comment") ?>
                </form>
                <div class="m-b-1"></div>
                <?php if ($comments) : ?>
                    <?php foreach ($comments as $comment) :
                        $userModel = new User();
                        $creator = $userModel->find("uid", $comment->created_by)[0];
                    ?>
                        <h4><?= $creator->username ?></h4>
                        <p><?= $comment->content ?></p>
                    <?php endforeach; ?>
                <?php endif; ?>
                <div class="m-b-1"></div>
            </div>

        </div>
    </div>
</div>

<script>
    // Set the date we're counting down to
    var countDownDate = new Date("<?= $event->startAt ?>").getTime();

    // Update the count down every 1 second
    var x = setInterval(function() {

        // Get today's date and time
        var now = new Date().getTime();

        // Find the distance between now and the count down date
        var distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Display the result in the element with id="demo"
        document.getElementById("demo").innerHTML = days + "d " + hours + "h " +
            minutes + "m " + seconds + "s ";

        // If the count down is finished, write some text
        if (distance < 0) {
            clearInterval(x);
            document.getElementById("demo").innerHTML = "Event is over";
        }
    }, 1000);
</script>

<script>
    const link = document.getElementById("notification-close");
    const notification = document.getElementById("notification-box");

    link.addEventListener("click", function handleClick() {
        notification.classList.remove("active");
    })
</script>
<script>
    var content = document.getElementById("comment")
    document.onkeydown = function(evt) {
        var keyCode = evt ? (evt.which ? evt.which : evt.keyCode) : event.keyCode;
        if (keyCode == 13) {
            document.commentForm.submit();
            content.style.disabled = true;
        }
    }
</script>
<?php $this->view("includes/footer"); ?>