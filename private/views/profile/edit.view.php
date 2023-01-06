<?php $this->view("includes/header"); 
$profilePictureSrc = get_image(
    Auth::getUser()->photoUrl,
    "user_photos"
);

?>



<div class="container position-absolute">
        <div class="back-icon-container">
            <?= IconLabel::index("fa fa-arrow-left back-icon", "", "profile") ?>
        </div>
    <div class="center-horizontal">
        <form method="post" enctype="multipart/form-data">
            <h3 class="text-center m-t-5">Update your profile!</h3>

            <div class="p-2"></div>

            <div class="center">
                    <img class="rounded-image profile-picture-normal" src="<?= $profilePictureSrc ?>" alt="">
            </div>

            <?= AuthInput::index("Profile Picture", "Profile Picture", get_var("photoUrl"), "photoUrl", "file") ?>
            <?= AuthInput::index(Auth::username(), "Username", get_var("username"), "username", "text") ?>
            <?= AuthInput::index(Auth::email(), "Email", get_var("email"), "email", "email") ?>
            <?= AuthInput::index(Auth::location(), "Location", get_var("email"), "location", "text") ?>
            <?= AuthInput::index(Auth::birthday(), "Birthday", get_var("birthday"), "birthday", "date") ?> <!-- Datum richtig hinschreiben!!! -->
            <?= AuthInput::selection("Pick your course", "Course", $courses, "course") ?>
            <!--<?= AuthInput::index("Password", "Password", get_var("password"), "password", "password") ?>
            <?= AuthInput::index("Repeat your password", "Repeat password", get_var("password_repeat"), "password_repeat", "password") ?> Change password-->
            <div class="m-t-2"></div>
            <?php
            if (!empty($errors)) {
                echo "<p class='text-error'><b>" . array_values($errors)[0] . "</b></p>";
            }
            ?>
            <div class="row justify-content-between">
                <div class="justify-content-end ms-t-2">
                    <button class="reset-button">
                        <h4>Change password</h4>
                    </button>
                </div>
                <div class="justify-content-end ms-t-2">
                    <button class="auth-button">
                        <h4>Update profile</h4>
                    </button>
                </div>    
            </div>
            
            <div class="center-horizontal m-t-3 m-b-3">
            </div>
        </form>
    </div>
</div>
<?php $this->view("includes/footer"); ?>