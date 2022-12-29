<?php
class Search extends Controller
{
    function index($search = "")
    {
        if(empty($search) && empty($_GET["search"])){
            $this->redirect("home");
        }
        $event = new Event();
        $search = "";

        if(!empty($_GET["search"])){
            $search = $_GET["search"];
        } else{
            $search = basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
            $search = urldecode($search);
        }

        if($search == "get"){
            $this->redirect("home");
        }

        $search_results = $event->search("title, description", $search);

        
        //$search = rawurldecode($search);


        
        $this->view("search", [
            "search" => $search,
            "search_results" => $search_results
        ]);
    }
}
