<a class="disable-text-decoration m-t-1" href="<?= ROOT ?>profile/<?= $notification->destination_id ?>">
    <div class="column">
        <div class="row">
            <h3>Friend Request</h3>
        </div>
        <p><?= $notification->content ?></p>
        <div class="row m-b-1">
            <a href="<?= ROOT ?>profile/accept/<?= $notification->destination_id ?>" class="disable-text-decoration">
                <i class="fa-solid fa-check back-icon"></i>
            </a>
            <a href="<?= ROOT ?>profile/decline/<?= $notification->destination_id ?>" class="disable-text-decoration m-l-3">
                <i class="fa-solid fa-xmark back-icon"></i>
            </a>
        </div>
    </div>
</a>
<hr>