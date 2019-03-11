<?php

class User {

    public $firstName;
    public $lastName;
    public $email;
    public $id;

//--------------------- SETTERS -----------------------//
    public function setFirstName($new_firstName) {
        $this->firstName = $new_firstName;
    }
    public function setLastName($new_lastName) {
        $this->lastName = strtoupper($new_lastName);
    }
    public function setEmail($new_email) {
        $this->email = $new_email;
    }
    public function setId($new_id) {
        $this->id = $new_id;
    }

//--------------------- GETTERS -----------------------//
    public function getFirstName(){
        return $this->firstName;
    }
    public function getLastName(){
        return $this->lastName;
    }
    public function getEmail(){
        return $this->email;
    }
    public function getId(){
        return $this->id;
    }

}