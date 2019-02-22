<?php

function getComments() {
    $connec = new PDO("mysql:dbname=ajax", 'root', '0000');
    $connec->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $request = $connec->prepare(
        "SELECT content, date_create
         FROM comments
         ORDER BY date_create DESC
         LIMIT 5");
    $request->execute();
    return $request->fetchAll(PDO::FETCH_ASSOC);
}

function getLikes() {
    $connec = new PDO("mysql:dbname=ajax", 'root', '0000');
    $connec->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $request = $connec->prepare(
        "SELECT numbers
         FROM likes");
    $request->execute();
    return $request->fetchAll(PDO::FETCH_ASSOC);
}

function getDisLikes() {
    $connec = new PDO("mysql:dbname=ajax", 'root', '0000');
    $connec->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $request = $connec->prepare(
        "SELECT numbers
         FROM dislikes");
    $request->execute();
    return $request->fetchAll(PDO::FETCH_ASSOC);
}

$posts = getComments();
$likes = getLikes();
$dislikes = getDisLikes();

?>