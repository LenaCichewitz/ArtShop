<?php 

$pdo = new PDO('mysql:host=localhost;dbname=shop', 'root', '');
$product_id = trim($_GET['product_id'] ?? '');
$quantity = trim($_GET['quantity'] ?? '');
$adress_id =  trim($_GET['adress_id'] ?? '');
$price  =  trim($_GET['price'] ?? '');

if(strlen($email) == 0 && strlen($description) == 0) {
    echo json_encode(["ok" => false]);
} else {
    $statement = $pdo->prepare("INSERT INTO orders (product_id, quantity,adress_id,price) VALUES (?,?,?,?)");
    $ok = $statement->execute([$product_id,$quantity,$adress_id,$price]);
    echo json_encode(["ok" => $ok]);
}