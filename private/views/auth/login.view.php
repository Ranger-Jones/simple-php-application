<?php $this->view("includes/header"); ?>

<div class="container full-height position-relative">
    <div class="back-icon-container">
        <a href="<?= ROOT ?>home" class="disable-text-decoration">
            <i class="fa fa-home back-icon"></i>
        </a>
    </div>
    <div class="center">
        <form method="post">
            <h3 class="text-center">Login to your Account</h3>
            <?= AuthInput::index("Email", "Email", get_var("email"), "email", "email") ?>
            <?= AuthInput::index("Password", "Password", get_var("password"), "password", "password") ?>
            <div class="m-t-2"></div>
            <?php
            if (!empty($errors)) {
                echo "<p class='text-error'><b>" . array_values($errors)[0] . "</b></p>";
            }
            ?>
            <div class="justify-content-end ms-t-2">
                <button class="auth-button">
                    <h4>Login</h4>
                </button>
            </div>

            <div class="center-horizontal m-t-3 m-b-3">
                <p class="text-center">Don't have an Account yet? <a class="text-primary text-decoration-hover" href="<?= ROOT ?>signup">Create one here!</a></p>
            </div>
        </form>
    </div>
</div>
<?php $this->view("includes/footer"); ?>