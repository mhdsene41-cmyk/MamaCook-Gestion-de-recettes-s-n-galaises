<?php
$host = "localhost";
$dbname = "mamacook";
$user = "root";
$pass = "";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
} catch (PDOException $e) {
    die("Erreur : " . $e->getMessage());
}
