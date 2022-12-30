<a class="disable-text-decoration event-container bg-primary w-70 h-30 rounded-corners row m-t-1" href="<?= ROOT ?>/events/<?= $event->event_id ?>/<?= $search ?>">

    <div class="event-info-image-container">
        <img src="<?= $thumbnailSrc ?>" alt="" class="event-info-image rounded-left-corners">
    </div>
    <div class="column">
        <div class="m-l-2 m-t-2">
            <div class="row align-items-baseline">
                <h3 class="text-secondary"><?= $event->title ?></h3>
                <p class="m-l-1 text-bold">by <?= $user->username ?></p>
            </div>
            <p><?= $event->description ?></p>
        </div>
        <div class="row m-l-2 m-t-2 hp-100 align-items-baseline justify-content-between" style="width: 100%;">
            <p>
                <i class="fa-solid fa-calendar"></i>
                <?= $event->createdAt ?>
            </p>
            <p>
                <i class="fa-solid fa-map-location-dot"></i>
                <?= $event->location ?>
            </p>
            <p>
                <i class="fa-solid fa-heart"></i>
                <?= $likes ?>
            </p>
        </div>

    </div>


</a>