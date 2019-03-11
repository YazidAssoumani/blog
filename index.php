<?php
    
    include 'models/bdd_connexion.php';

    // Récupération de tous les articles du blog classés par ordre antéchronologique.
    $query =
    '
        SELECT
            id,
            firstName,
            lastName,
            email
        FROM
            students
        ORDER BY
            id DESC
        LIMIT 10
    ';
    $resultSet = $pdo->query($query);
    $users = $resultSet->fetchAll();

    // Sélection et affichage du template PHTML.
    include 'index.phtml';