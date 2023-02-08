<?php $this->view("includes/header"); ?>

<div class="container position-absolute">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <div class="center-horizontal">
        <form method="post" enctype="multipart/form-data">
            <h3 class="text-center m-t-5">Sign up</h3>
            <?= AuthInput::index("Profile Picture", "Profile Picture", get_var("photoUrl"), "photoUrl", "file") ?>
            <?= AuthInput::index("Username", "Username", get_var("username"), "username", "text") ?>
            <?= AuthInput::index("Email", "Email", get_var("email"), "email", "email") ?>
            <?= AuthInput::index("Type your city", "Location", get_var("email"), "location", "text") ?>
            <?= AuthInput::index("Birthday", "Birthday", get_var("birthday"), "birthday", "date") ?>
            <?= AuthInput::selection("Pick your course", "Course", $courses, "course") ?>
            <?= AuthInput::index("Password", "Password", get_var("password"), "password", "password") ?>
            <?= AuthInput::index("Repeat your password", "Repeat password", get_var("password_repeat"), "password_repeat", "password") ?>
            <div class="m-t-2"></div>
            <?php
            if (!empty($errors)) {
                echo "<p class='text-error'><b>" . array_values($errors)[0] . "</b></p>";
            }
            ?>
            <div class="justify-content-end ms-t-2">
                <button class="auth-button">
                    <h4>Sign up</h4>
                </button>
            </div>
            <div class="center-horizontal m-t-3 m-b-3">
                <p class="text-center">Already have an Account? <a class="text-primary text-decoration-hover" href="<?= ROOT ?>signup">Login here!</a></p>
            </div>
        </form>
    </div>
</div>
<?php $this->view("includes/footer"); ?>