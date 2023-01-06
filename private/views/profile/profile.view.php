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
                    <h4 class="text-primary">Level <?= Auth::level() ?></h4>
                    <div class="row align-items-baseline">
                        <h1><?= Auth::username() ?></h1>
                        <h3 class="text-secondary m-l-1"><?= User::get_course(Auth::course()) ?></h3>
                    </div>
                    <p><?= Auth::description() ?></p>
                    <div class="row align-items-baseline m-t-1">

                        <p><i class="fa-solid fa-map-location-dot"></i>
                            <?= Auth::location() ?>
                        </p>

                        <p class="m-l-1">
                            <i class="fa-solid fa-heart"></i>
                            12
                        </p>

                    </div>
                </div>
            </div>
        </div>
        <div class="center-horizontal m-t-2">
            <div class="w-60 row justify-content-between">
                <h2 class="text-secondary text-underlined">Created Events</h2>
                <h2>Joined Events</h2>
                <h2>Liked Events</h2>
            </div>
        </div>
        <div class="row center-horizontal p-b-5">
            <div class="column">
                <?php foreach ($createdEvents as $createdEvent) {
                    EventInfo::index($createdEvent);
                } ?>
            </div>
        </div>

    </div>
</div>
<?php $this->view("includes/footer"); ?>