<?php

include '../models/bdd_connexion.php';
include '../classes/user.class.php';

$userAccount = new User();

(! empty($_POST['firstName'])) ? $userAccount->setFirstName($_POST['firstName']) : 'erreur';
(! empty($_POST['lastName'])) ? $userAccount->setLastName($_POST['lastName']) : 'erreur';
(! empty($_POST['email'])) ? $userAccount->setEmail($_POST['email']) : 'erreur';

$firstName = $userAccount->getFirstName();
$lastName = $userAccount->getLastName();
$email = $userAccount->getEmail();

$query =
'
    INSERT INTO
        students
        (
            firstName,
            lastName,
            email
        )
    VALUES
        (
            :firstName,
            :lastName,
            :email
        )
';

$req = $pdo->prepare($query);
$req->bindParam(':firstName', $firstName);
$req->bindParam(':lastName', $lastName);
$req->bindParam(':email', $email);
$req->execute();

$lastId = $pdo->lastInsertId();
$userAccount->setId($lastId);

echo json_encode($userAccount);