<?php $this->view("includes/header"); ?>
<div class="container full-height">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <div class="center-horizontal m-t-1">
        <div class="column">

            <h1 class="text-primary text-center">Search Results</h1>
            <form action="get" name="searchForm">
                <div class="search-bar-container m-t-1">
                    <i class="fa fa-search input-icon"></i>
                    <input class="search-bar w-45" type="text" name="search" value="<?= $search ?>" placeholder="Search for events, locations and users" />
                </div>
            </form>
            <div class="center-horizontal m-t-1">
                <div class="row w-50 justify-content-between">

                    <h2 class="text-secondary text-underlined">Events</h2>
                    <h2>Users</h2>
                    <h2>Locations</h2>
                </div>
            </div>
            <?php if (!empty($search_results)) : ?>
                <div class="row center-horizontal p-b-5">
                    <?php foreach ($search_results as $search_result) {
                        $user = new User();
                        $likedEvents = new LikedEvent();
                        $likedUsers = $likedEvents->find("event_id", $search_result->event_id);
                        $likes = $likedUsers ? count($likedUsers) : 0;
                        $creator = $user->find("uid", $search_result->createdBy)[0];
                        EventInfo::index($search_result, $creator,$likes, $search);
                    } ?>
                </div>
            <?php endif; ?>
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