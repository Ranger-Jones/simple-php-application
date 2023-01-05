<?php $this->view("includes/header"); ?>
<div class="container w-100">
    <div class="back-icon-container">
        <a href=<?php echo ROOT . "events/" . $eventId . "/" . urlencode($search) ?> class="disable-text-decoration">
            <i class="fa fa-arrow-left back-icon"></i>
        </a>
    </div>
    <div class="column m-t-5 center">
        <?php
        foreach ($joinedUsers as $user) :
            $profilePic = get_image($user->photoUrl, "user_photos")
        ?>
            <div class="w-40">

                <div class="row ms-t-1 p-1">
                    <div class="user-info-image-container">
                        <img src="<?= $profilePic ?>" class="user-info-image" />
                    </div>
                    <div class="column m-l-2 m-t-2">
                        <h4><?= $user->username ?></h4>
                        <div class="row">
                            <p class="m-r-1">
                                <i class="fa-solid fa-map-location-dot"></i>
                                <?= $user->location ?>
                            </p>

                            <p>
                                <i class="fa-solid fa-user-tie"></i>
                                <?= $userRoles[$user->uid] ?>
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>



<?php $this->view("includes/footer"); ?>