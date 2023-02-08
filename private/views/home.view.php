<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <?php if(Auth::isLoggedIn()):?>
    <div class="back-icon-container">
        <a href="<?= ROOT ?>notifications" class="disable-text-decoration">
            <i class="fa-solid fa-bell back-icon"></i>
        </a>
    </div>
    <?php endif; ?>
    <div class="center">
        <div class="column">
            <div class="w-50">
                <div class="center-horizontal">
                    <h1 class="text-primary">RavingBooth</h1>
                </div>
                <form action="get" name="searchForm">
                    <div class="search-bar-container m-t-1">
                        <button type="submit" name="submit" class="disable-input-decoration" style="opacity: 0;"></button><i class="fa fa-search input-icon"></i>
                        <input class="search-bar w-45" type="text" name="search" placeholder="Search for events, locations and users" />
                    </div>
                </form>
                <div class="row center-horizontal m-t-2">
                    <?php if (Auth::isLoggedIn()) : ?>
                        <?= IconLabel::index("fa-solid fa-user", "My Account", "profile") ?>
                        <?= IconLabel::index("fa-solid fa-champagne-glasses", "Create Event", "createEvent") ?>
                        <?= IconLabel::index("fa-solid fa-people-group", "My Groups", "groups") ?>
                    <?php else : ?>
                        <?= IconLabel::index("fa-solid fa-plus", "Create Account", "login") ?>
                    <?php endif ?>
                </div>
                <a href="<?= ROOT ?>logout">Logout</a>
            </div>
        </div>
    </div>
</div>

<script>
    document.onkeydown = function(evt) {
        var keyCode = evt ? (evt.which ? evt.which : evt.keyCode) : event.keyCode;
        if (keyCode == 13) {
            //your function call here
            document.searchForm.submit();
        }
    }
</script>
<?php $this->view("includes/footer"); ?>