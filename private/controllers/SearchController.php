<?php
class Search extends Controller
{
    function index($search)
    {
        $event = new Event();
        //$search = rawurldecode($search);
        $search = basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
        $search = urldecode($search);
        $search_results = $event->search("title, description", $search);
        $this->view("search", [
            "search" => $search,
            "search_results" => $search_results
        ]);
    }
}
