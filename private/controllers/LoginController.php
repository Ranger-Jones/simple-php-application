<?php
class Login extends Controller
{
    function index()
    {
        if (Auth::isLoggedIn()) {
            $this->redirect("home");
        }
        $errors = array();
        if (count($_POST) > 0) {
            $user = new User();

            if ($row = $user->find("email", $_POST["email"])) {
                $row = $row[0];
                if (password_verify($_POST["password"], $row->password)) {
                    Auth::authenticate($row);
                    $this->redirect("home");
                } else {
                    $errors["password"] = "You typed a wrong password";
                }
            } else {
                $errors["email"] = "Wrong email or password";
            };
        }
        $this->view("auth/login", ["errors" => $errors]);
    }
}
