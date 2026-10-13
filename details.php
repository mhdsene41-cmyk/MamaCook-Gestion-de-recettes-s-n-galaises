<?php
session_start();
require_once("../configuration/db.php");

$id = $_GET['id'];

$req = $pdo->prepare("SELECT * FROM recettes WHERE id = ?");
$req->execute([$id]);
$recette = $req->fetch();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Détails recette</title>
    <img 
  src="../images/<?php echo $recette['image']; ?>" 
  alt="Image recette"
  width="300"
>
<link rel="stylesheet" href="../codeCSS/style.css">
    
</head>
<body>
    
<h2>Detail du recette</h2>
<h2><?php echo $recette['titre']; ?></h2>
<p class="description">
    <?php echo nl2br($recette['description']); ?>
</p>



<h1><a href="recettes.php">⬅ Retour</a></h1>

</body>
</html>
