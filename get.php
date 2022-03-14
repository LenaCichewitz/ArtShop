<?php
var_dump("TEST"); 
header('Content-Type: application/json');
$pdo = new PDO('mysql:host=localhost;dbname=artshop', 'root', '');
$statement = $pdo->prepare("SELECT * FROM products ORDER BY id");
$statement->execute();
$data = $statement->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($data);