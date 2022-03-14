
<?php
header('Content-Type: application/json');
$pdo = new PDO('mysql:host=localhost;dbname=artshop', 'root', '');
$id = intval($_GET['id'] ?? 0);
$statement = $pdo->prepare("DELETE FROM products WHERE id = ?");
$ok = $statement->execute([$id]);
echo json_encode(["ok" => $ok]);