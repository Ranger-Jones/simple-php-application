<?php
class Signup extends Controller
{
    public $errors = array();
    public $courses = array();

    function index()
    {
        if (Auth::isLoggedIn()) {
            $this->redirect("home");
        }
        $user = new User();
        $courses = $user->courses;
        if (count($_POST) > 0) {
            if ($user->validate($_POST)) {
                $_POST = $user->uploadImage($_POST, $_FILES, "photoUrl", "user_photos", "photoUrl", "profilePic");
                if ($_POST) {
                    $user->insert($_POST);
                    $this->redirect("login");
                } else {
                    $errors = $user->errors;
                }
            } else {
                $errors = $user->errors;
            }
        }
        $this->view("auth/signup", [
            "errors" => $errors,
            "courses" => $courses,
        ]);
    }
}