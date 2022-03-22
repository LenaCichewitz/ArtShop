<?php 

$pdo = new PDO('mysql:host=localhost;dbname=shop', 'root', '');
$email = trim($_GET['email'] ?? '');
$description =  trim($_GET['description'] ?? ''); 

if(strlen($email) == 0 && strlen($description) == 0) {
    echo json_encode(["ok" => false]);
} else {
    $statement = $pdo->prepare("INSERT INTO comissions (email, description) VALUES (?,?)");
    $ok = $statement->execute([$email,$description]);
    echo json_encode(["ok" => $ok]);
}