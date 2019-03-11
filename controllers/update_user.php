<?php

include '../models/bdd_connexion.php';
include '../classes/user.class.php';

$userAccount = new User();

(! empty($_POST['firstName'])) ? $userAccount->setFirstName($_POST['firstName']) : 'erreur';
(! empty($_POST['lastName'])) ? $userAccount->setLastName($_POST['lastName']) : 'erreur';
(! empty($_POST['email'])) ? $userAccount->setEmail($_POST['email']) : 'erreur';
(! empty($_POST['id'])) ? $userAccount->setId($_POST['id']) : 'erreur';

$firstName = $userAccount->getFirstName();
$lastName = $userAccount->getLastName();
$email = $userAccount->getEmail();
$id = $userAccount->getId();

$query =
'
    UPDATE
        students
    SET
        firstName = :firstName,
        lastName = :lastName,
        email = :email
    WHERE
        id = :id
';

$req = $pdo->prepare($query);
$req->bindParam(':firstName', $firstName);
$req->bindParam(':lastName', $lastName);
$req->bindParam(':email', $email);
$req->bindParam(':id', $id);
$req->execute();

echo json_encode($userAccount);