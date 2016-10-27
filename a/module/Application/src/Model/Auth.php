<?php
namespace Application\Model;

 class Auth
 {
     public $id;
     public $username;

     public function exchangeArray($data)
     {
         $this->id     = (!empty($data['id'])) ? $data['id'] : null;
         $this->username = (!empty($data['username'])) ? $data['username'] : null;
     }
 }