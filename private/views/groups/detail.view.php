<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>groups" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>


    <div class="column w-100 m-t-5">
        <div class="center-horizontal">
            <img class="group-preview-photo rounded-image" src="<?= $groupThumbnail ?>" />
        </div>
        <div class="center-horizontal">
            <h1 class="text-primary"><?= $group->title ?></h1>
        </div>
        <div class="center-horizontal">
            <p><?= $group->description ?></p>
        </div>
        <hr class="m-t-1 m-b-1">
        <div class="row center-horizontal">
            <?= IconLabel::button("fa-solid fa-arrow-up-from-bracket", "Invite Friends", "small", "invite") ?>
            <?= IconLabel::index("fa-solid fa-joint", "Leave the group", "events/joinEvent/" . $event->event_id, "small") ?>
            <?= IconLabel::index("fa-solid fa-image", "Images", "#", "small") ?>
        </div>
        <hr class="m-t-1 m-b-1">
    </div>




</div>

<div id="inviteModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h3>Invite your friends</h3>
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
    var modal = document.getElementById("inviteModal");
    var inviteBtn = document.getElementById("invite");
    var closeModal = document.getElementsByClassName("close")[0];

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