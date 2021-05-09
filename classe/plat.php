<?php

class Plat {
    private $id;
    private $titre;
    private $points;
    private $reduction;
    private $description;
    private $image;
    

    function __construct($id,$titre,$points,$reduction,$description,$image) {
        $this->id =$id;
        $this->titre =$titre;
         $this->points =$points;
        $this->reduction =$reduction;
         $this->description =$description;
         $this->image=$image;
    }
     function getImage() {
        return $this->image;
    }
   
}
