<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Template
 *
 * @author carolinefitall
 */
class Template {
   private $title;
   private $description;
   
   
   public function __construct($title, $description) {
      $this->title =$title; 
      $this->description =$description;
       
}
   
   function getTitle() {
       return $this->title;
   }

   function getDescription() {
       return $this->description;
   }

   function setTitle($title) {
       $this->title = $title;
   }

   function setDescription($description) {
       $this->description = $description;
   }


}
