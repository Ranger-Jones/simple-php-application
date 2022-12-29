<?php
class Home extends Controller
{
    function index()
    {
        if (isset($_GET["submit"])) {
            $this->redirect("search/" . urlencode($_GET["search"]));
        }
        $this->view("home");
    }
}
