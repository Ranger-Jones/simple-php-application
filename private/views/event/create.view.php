<?php $this->view("includes/header"); ?>

<div class="container full-height position-relative">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <div class="center">
        <form method="post" enctype="multipart/form-data">
            <h3 class="text-center">Create Event</h3>

            <p class="text-primary text-center">Step
                <input class="disable-input-style w-12p" value="<?= $step ?>" name="step" />/<?= $maxSteps ?>
            </p>
            <?php
            if (!empty($values["description"])) : ?>

                <input class="disable-input-style text-end" style="opacity: 0;" value="<?= $values['description'] ?>" name="description" />

            <?php
            endif; ?>
            <div class="row w-40 justify-content-between">
                <?php if (!empty($values["title"])) : ?>
                    <p class="text-bold">Title:
                        <input class="disable-input-style" value="<?= $values['title'] ?>" name="title" />
                    </p>
                <?php endif;
                if (!empty($values["description"])) : ?>
                    <p class="text-bold text-end">Description:
                        <input class="disable-input-style text-end" value="<?= substr($values['description'], 0, 16) ?>" name="descriptionPreview" />
                    </p>
                <?php endif; ?>
            </div>
            <div class="row w-40 justify-content-between">
                <?php if (!empty($values["location"])) : ?>
                    <p class="text-bold">Location:
                        <input class="disable-input-style" value="<?= $values['location'] ?>" name="location" />
                    </p>
                <?php endif;
                if (!empty($values["startAt"])) : ?>
                    <p class="text-bold text-end">Start Date:
                        <input class="disable-input-style text-end" value="<?= $values['startAt'] ?>" name="startAt" />
                    </p>
                <?php endif; ?>
            </div>
            <div class="row w-40 justify-content-between">

                <?php if (!empty($values["public"])) : ?>

                    <p class="text-bold">Public Event: <?= $values["public"] ?>
                        <input class="disable-input-style" style="opacity: 0;" name="public" value="true" type="checkbox" <?php if ($values["public"] == "true") {
                                                                                                                                echo "checked";
                                                                                                                            } else {
                                                                                                                                echo "";
                                                                                                                            } ?> />
                    </p>
                <?php endif;
                if (!empty($values["thumbnail"])) : ?>
                    <p class="text-bold text-end">Thumbnail:
                        <input class="disable-input-style text-end" value="<?= $values['thumbnail'] ?>" name="thumbnail" />
                    </p>
                <?php endif; ?>
            </div>
            <?php switch ($step):
                case "1":
                    AuthInput::index("Enter something...", "Title", get_var("title"), "title", "text");
                    AuthInput::textarea("Can you give some information about your event?", "Description", get_var("description"), "description", "text");
                    break;
                case "2":
                    AuthInput::index("Date", "Start Date of our event", get_var("startAt"), "startAt", "date");
                    AuthInput::index("Location", "Location", get_var("location"), "location", "text");
                    AuthInput::toggle(
                        "Public Event",
                        "public",
                        isset($values["public"]),
                        isset($values["public"]) ? $values["public"] : ""
                    );
                    break;
                case "3":
                    AuthInput::picture("Thumbnail", "", "thumbnail");
                    break;
            endswitch ?>
            <div class="m-t-2"></div>
            <?php
            if (!empty($errors)) {
                echo "<p class='text-error'><b>" . array_values($errors)[0] . "</b></p>";
            }
            ?>
            <div class="justify-content-end ms-t-2">
                <?php if ($step != "1") : ?>
                    <button class="button-back m-r-1" name="back">
                        <h4>Back</h4>
                    </button>
                <?php endif; ?>
                <button class="auth-button" name="create">
                    <?php if ($step == "3") : ?>
                        <h4>Create</h4>
                    <?php else : ?>
                        <h4>Next</h4>
                    <?php endif; ?>
                </button>
            </div>


        </form>
    </div>
</div>

<?php $this->view("includes/footer"); ?>