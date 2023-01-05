<?php $this->view("includes/header"); ?>
<div class="container w-100">
    <div class="back-icon-container">
        <a href=<?php echo ROOT . "events/" . $eventId ?> class="disable-text-decoration">
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
                        <div class="row">
                            <h4 class="m-r-1"><?= $user->username ?></h4>
                            <?php if ($userRoles[Auth::uid()] == "Admin") : ?>
                                <?php if ($user->uid == $eventResult->createdBy) : ?>
                                    <div class="dropdown">
                                        <h4 class="text-secondary"><i class="fa-solid fa-crown dropbtn"></i></h4>
                                        <div class="dropdown-content">
                                            <?php if ($eventResult->createdBy == Auth::uid()) : ?>
                                                <p class="text-dark text-center">You are the King!</p>
                                            <?php else : ?>
                                                <p class="text-dark text-center">This guy is the King!</p>

                                            <?php endif; ?>
                                        </div>
                                    </div>
                                <?php elseif ($user->uid == Auth::uid() && $userRoles[$user->uid] == "Admin") : ?>
                                    <div class="dropdown">
                                        <h4 class="text-secondary"><i class="fa-solid fa-meteor dropbtn"></i></h4>
                                        <div class="dropdown-content">
                                            <p class="text-dark text-center">That's you! </p>
                                        </div>
                                    </div>
                                <?php else : ?>
                                    <div class="dropdown">
                                        <h4><i class="fa-solid fa-ellipsis-vertical dropbtn"></i></h4>
                                        <div class="dropdown-content">
                                            <?php if ($userRoles[$user->uid] == "Admin") : ?>
                                                <a href="<?= ROOT ?>events/users/<?= $eventId ?>/tr/<?= $user->uid ?>">
                                                    <p>Downgrade to Raver</p>
                                                </a>
                                            <?php else : ?>
                                                <a href="<?= ROOT ?>events/users/<?= $eventId ?>/ta/<?= $user->uid ?>">
                                                    <p>Upgrade to Admin</p>
                                                </a>
                                            <?php endif; ?>
                                            <a href="<?= ROOT ?>events/users/<?= $eventId ?>/ru/<?= $user->uid ?>">
                                                <p>Remove from Event</p>
                                            </a>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            
                            <?php elseif ($user->uid == $eventResult->createdBy) : ?>
                                <div class="dropdown">
                                    <h4 class="text-secondary"><i class="fa-solid fa-crown dropbtn"></i></h4>
                                    <div class="dropdown-content">
                                        <?php if ($eventResult->createdBy == Auth::uid()) : ?>
                                            <p class="text-dark text-center">You are the King!</p>
                                        <?php else : ?>
                                            <p class="text-dark text-center">This guy is the King!</p>

                                        <?php endif; ?>
                                    </div>
                                </div>
                            <?php elseif ($user->uid == Auth::uid()) : ?>
                                <div class="dropdown">
                                    <h4 class="text-secondary"><i class="fa-solid fa-meteor dropbtn"></i></h4>
                                    <div class="dropdown-content">
                                        <p class="text-dark text-center">That's you! </p>
                                    </div>
                                </div>
                            <?php endif; ?>

                        </div>

                        <div class="row align-items-center">
                            <p class="m-r-1">
                                <i class="fa-solid fa-map-location-dot"></i>
                                <?= $user->location ?>
                            </p>
                            <p class="m-r-1">
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