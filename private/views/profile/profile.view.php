<?php $this->view("includes/header"); ?>
<div class="container">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <div class="column w-100">
        <div class="row center-horizontal m-t-5">
            <div class="display-grid">
                <div class="center">
                    <img class="rounded-image profile-picture-normal" src="<?= $profilePictureSrc ?>" alt="">
                </div>
                <div class="">
                    <h4 class="text-primary">Level <?= $user->level ?></h4>
                    <div class="row align-items-baseline">
                        <h1><?= $user->username ?></h1>
                        <h3 class="text-secondary m-l-1"><?= User::get_course($user->course) ?></h3>
                    </div>
                    <p><?= $user->description ?></p>
                    <div class="row align-items-baseline m-t-1">

                        <p><i class="fa-solid fa-map-location-dot"></i>
                            <?= $user->location ?>
                        </p>

                        <p class="m-l-1">
                            <i class="fa-solid fa-user-group"></i>
                            <?= count($friendsUids) ?>
                        </p>

                    </div>
                    <?php if (!$myprofile) : ?>
                        <div class="align-items-center m-t-1">
                            <a href="<?= ROOT ?>profile/add/<?= $user->uid ?>/<?= $eventType ?>" class="disable-text-decoration event-join-button justify-content-center align-items-center">
                                <h4>
                                    <?php if ($isFriend) : ?>

                                        <i class="fa-solid fa-user-minus"></i><?php echo "Remove"; ?>


                                    <?php elseif ($friendRequestPending) : ?>
                                        <i class="fa-solid fa-hourglass-half"></i> <?php echo "Pending"; ?>
                                    <?php else : ?>
                                        <i class="fa-solid fa-user-plus"></i><?php echo "Add"; ?>
                                    <?php endif; ?>
                                </h4>
                            </a>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <div class="center-horizontal m-t-2">
            <div class="w-60 row justify-content-between">
                <a class="disable-text-decoration" href="<?= ROOT ?>profile/<?php echo $user->uid == Auth::uid() ? "0" : $user->uid . "/0" ?>">
                    <h2 class="<?php echo $eventType == 0 ? "text-secondary text-underlined" : ""; ?>">Created Events</h2>
                </a>
                <a class="disable-text-decoration" href="<?= ROOT ?>profile/<?php echo $user->uid == Auth::uid() ? "1" : $user->uid . "/1" ?>">
                    <h2 class="<?php echo $eventType == 1 ? "text-secondary text-underlined" : ""; ?>">Liked Events</h2>
                </a>
                <a class="disable-text-decoration" href="<?= ROOT ?>profile/<?php echo $user->uid == Auth::uid() ? "2" : $user->uid . "/2" ?>">
                    <h2 class="<?php echo $eventType == 2 ? "text-secondary text-underlined" : ""; ?>">Joined Events</h2>
                </a>
            </div>
        </div>
        <div class="row center-horizontal p-b-5">
            <div class="column">
                <?php switch ($eventType):
                    case 0:
                        foreach ($createdEvents as $createdEvent) {
                            EventInfo::index($createdEvent);
                        }
                        break;
                    case 1:
                        foreach ($likedEvents as $likedEvent) {
                            EventInfo::index($likedEvent);
                        }
                        break;
                    case 2:
                        foreach ($joinedEvents as $joinedEvent) {
                            EventInfo::index($joinedEvent);
                        }
                        break;
                    default:
                ?><p>Nothing selected</p><?php
                                            break;
                                    endswitch;
                                            ?>
            </div>
        </div>

    </div>
</div>
<?php $this->view("includes/footer"); ?>