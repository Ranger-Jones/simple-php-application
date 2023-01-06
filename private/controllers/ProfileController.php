<?php
class Profile extends Controller
{
    function index()
    {
        $event = new Event();
        $createdEvents = $event->find("createdBy", Auth::uid());
        $this->view("profile/profile", [
            "createdEvents" => $createdEvents
        ]);
    }

    function edit()
    {
        $this->view("profile/editprofile", [
            /*"createdEvents" => $createdEvents*/
        ]);
    }

}
