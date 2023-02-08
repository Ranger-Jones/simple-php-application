<?php $this->view("includes/header"); ?>
<div class="container full-height position-relative">
    <div class="back-icon-container z-10">
        <a href=<?php echo empty($search) ? ROOT . "home" : ROOT . "search/" . urlencode($search) ?> class="disable-text-decoration">
            <i class="fa <?php echo empty($search) ? "fa-home" : "fa-arrow-left" ?> back-icon"></i>
        </a>
    </div>
    <?php if ($event->startAt < date("Y-m-d H:i:s")) : ?>

        <div class="firework z-10"></div>
        <div class="firework z-10"></div>
        <div class="firework z-10"></div>

    <?php endif; ?>
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
                    <div class="center-horizontal">
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
        </div>
        <div class="column w-60">
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
                <div class="row justify-content-between w-40 m-b-1 m-t-1">
                    <p>
                        <i class="fa-solid fa-calendar"></i>
                        <?= $event->startAt ?>
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

                <hr class="m-t-1 m-b-1">
                <div class="row center-horizontal">
                    <?php if ($user_joined) : ?>
                        <?= IconLabel::button("fa-solid fa-arrow-up-from-bracket", "Invite Friends", "small", "invite") ?>
                        <?= IconLabel::index("fa-solid fa-joint", $user_joined ? "Leave the Rave" : "Join the Rave", "events/joinEvent/" . $event->event_id, "small") ?>
                        <?= IconLabel::index("fa-solid fa-image", "Images", "#", "small") ?>
                        <?= IconLabel::index("fa-regular fa-square-plus", "Add Item", "items/add/" . $event->event_id . "/" . $search . "/", "small") ?>
                    <?php else : ?>
                        <?= IconLabel::index("fa-solid fa-joint", "Join the Rave", "events/joinEvent/" . $event->event_id, "small") ?>
                    <?php endif; ?>
                </div>
                <hr class="m-t-1 m-b-1">
                <div class="row align-items-center">
                    <h3>Item</h3>
                    <?php if ($user_joined) : ?>
                        <a href="<?= ROOT ?>items/add/<?= $event->event_id ?>/<?= $search ?>/" class="disable-text-decoration">
                            <h4 class="m-l-1 change-color-on-hover"><i class="fa-solid fa-circle-plus"></i></h4>
                        </a>
                    <?php endif; ?>
                </div>



                <?php if (!empty($items)) : ?>
                    <table class="justify-space-between" style="width: 100%;">
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
                            $itemImage = "";
                            foreach ($itemsRaw as $itemRaw) {
                                if ($itemRaw->item_id == $item->item_id) {
                                    $itemImage =
                                        get_image($itemRaw->photoUrl, "item_photos");
                                }
                            }
                            ?>
                            <tr>
                                <td>
                                    <div class="row align-items-center">
                                        <img src="<?= $itemImage ?>" style="width: 20px; height: 20px; object-fit: cover;" />
                                        <p class="m-l-1"><?= $item->item_name ?></p>
                                    </div>
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
                <hr class="m-t-1 m-b-1">
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
                        <div class="row">
                            <h4><?= $creator->username ?></h4>
                            <a href="<?= ROOT ?>events/comments/<?= $event->event_id ?>/del/<?= $comment->comment_id ?>">
                                <h4><i class="fa-solid fa-trash change-color-on-hover-error m-l-1"></i></h4>
                            </a>
                        </div>
                        <p class="break-word m-r-1"><?= $comment->content ?></p>
                    <?php endforeach; ?>
                <?php endif; ?>
                <div class="m-b-1"></div>
            </div>
        </div>
    </div>

</div>
<div id="inviteModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h3>Invite your friends</h3>
        <button name="link" onclick="copyToClipboard('<?=$link?>')" class="event-join-button">
            <h4>
                <i class="fa-solid fa-joint"></i> Invite Link
            </h4>
        </button>
        <?php foreach ($authUserFriends as $authUserFriend) : ?>
            <div class="row justify-content-between m-b-1 align-items-center" style="width: 100%;">
                <h4><?= $authUserFriend->username ?></h4>
                <button class="invite-user-button" onclick="inviteUser('<?= $authUserFriend->uid ?>','<?= $authUserFriend->username ?>')" id="<?= $authUserFriend->username ?>"><i class="fa-solid fa-user-check m-r-1 text-color"></i>Invite</button>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<script>
    function inviteUser(uid, username) {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById(username).innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "<?php echo AJAXREQUEST; ?>" + "/inviteuser/" + uid + "/" + "<?php echo $event->event_id; ?>", true);
        xmlhttp.send();

    }
</script>
<script>
    var countDownDate = new Date("<?= $event->startAt ?>").getTime();

    var x = setInterval(function() {

        var now = new Date().getTime();

        var distance = countDownDate - now;

        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        document.getElementById("demo").innerHTML = days + "d " + hours + "h " +
            minutes + "m " + seconds + "s ";

        if (distance < 0) {
            clearInterval(x);
            document.getElementById("demo").innerHTML = "Event is over";
        }
    }, 1000);

    const link = document.getElementById("notification-close");
    const notification = document.getElementById("notification-box");

    link.addEventListener("click", function handleClick() {
        notification.classList.remove("active");
    })

    var content = document.getElementById("comment")
    document.onkeydown = function(evt) {
        var keyCode = evt ? (evt.which ? evt.which : evt.keyCode) : event.keyCode;
        if (keyCode == 13) {
            document.commentForm.submit();
            content.style.disabled = true;
        }
    }
</script>
<script>
    var modal = document.getElementById("inviteModal");

    // Get the button that opens the modal
    var inviteBtn = document.getElementById("invite");

    // Get the <span> element that closes the modal
    var closeModal = document.getElementsByClassName("close")[0];

    function copyToClipboard(text) 
    {
    navigator.clipboard.writeText(text).then(function() {
    console.log('Copying to clipboard was successful!');
    }, function(err) {
    console.error('Could not copy text: ', err);
    });
    }

    inviteBtn.onclick = function() {
        modal.style.display = "block";
    }

    closeModal.onclick = function() {
        modal.style.display = "none";
    }

    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
<?php $this->view("includes/footer"); ?>