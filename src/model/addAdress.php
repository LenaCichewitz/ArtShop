<?php 

$pdo = new PDO('mysql:host=localhost;dbname=shop', 'root', '');
$zip = trim($_GET['zip'] ?? '');
$street = trim($_GET['street'] ?? '');
$city =  trim($_GET['city'] ?? '');
$house_no  =  trim($_GET['house_no'] ?? '');

    $statement = $pdo->prepare("INSERT INTO adress (zip, street,city,house_no) VALUES (?,?,?,?)");
    $ok = $statement->execute([$zip,$street,$city,$house_no]);
    echo json_encode(["ok" => $ok]);