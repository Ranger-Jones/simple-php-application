<?php
class EditProfile extends Controller
{
    function index()
    {
        /*$event = new Event();
        $createdEvents = $event->find("createdBy", Auth::uid());*/

        


        $this->view("profile/editprofile", [
            /*"createdEvents" => $createdEvents*/
        ]);
    }
}