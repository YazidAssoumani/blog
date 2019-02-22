<?php

if (isset($_POST['comment'])) {
    $comment = $_POST['comment'];

    $connec = new PDO("mysql:dbname=ajax", 'root', '0000');
    $connec->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $request = $connec->prepare("INSERT INTO comments (content, date_create) 
                                 VALUES ('$comment', NOW())");
    $request->execute();

    echo "OK";
} else {
    echo "NOT OK";
}

?>