<?php

include '../models/bdd_connexion.php';
include '../classes/user.class.php';

$id = (! empty($_POST['id'])) ? $_POST['id'] : 0;

$query =
'
    SELECT
        id,
        firstName,
        lastName,
        email
    FROM
        students
    WHERE
        id = :id
';

$req = $pdo->prepare($query);
$req->bindParam(':id', $id);
$req->execute();

$userAccount = $req->fetch();

echo json_encode($userAccount);