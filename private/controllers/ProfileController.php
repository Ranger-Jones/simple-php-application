<?php
class Profile extends Controller
{
    function index()
    {
        $event = new Event();
        $createdEvents = $event->find("createdBy", Auth::uid());
        if (!$createdEvents) {
            $createdEvents = array();
        }
        $profilePictureSrc = get_image(
            Auth::getUser()->photoUrl,
            "user_photos"
        );
        $this->view("profile/profile", [
            "createdEvents" => $createdEvents,
            "profilePictureSrc" => $profilePictureSrc
        ]);
    }

    function edit()
    {
        $this->view("profile/editprofile", [
            /*"createdEvents" => $createdEvents*/
        ]);
    }

}
