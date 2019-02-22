<?php

if (isset($_GET['likesNumber'])) {
    $like = $_GET['likesNumber'];

    $connec = new PDO("mysql:dbname=ajax", 'root', '0000');
    $connec->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $request = $connec->prepare("UPDATE likes 
                                 SET numbers = '$like'
                                 WHERE id = 1");
    $request->execute();

    echo "Like added";
} elseif (isset($_GET['dislikesNumber'])) {
    $dislike = $_GET['dislikesNumber'];

    $connec = new PDO("mysql:dbname=ajax", 'root', '0000');
    $connec->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $request = $connec->prepare("UPDATE dislikes 
                                 SET numbers = '$dislike'
                                 WHERE id = 1");
    $request->execute();

    echo "Dislike added";
} else {
    echo "NOT OK";
}

?>