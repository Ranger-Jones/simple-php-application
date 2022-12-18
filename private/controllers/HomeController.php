<?php
class Home extends Controller
{
    function index()
    {
        $user = $this->load_model('user');
        $data = $user->findAll();
        $this->view("home", ["rows" => $data]);
    }
}