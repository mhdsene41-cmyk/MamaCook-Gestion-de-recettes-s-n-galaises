<?php
session_start();
require_once("../configuration/db.php");

if (!isset($_SESSION['user'])) {
    header("Location: login.php");
}

$recettes = $pdo->query("SELECT * FROM recettes")->fetchAll();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Recettes - MamaCook</title>
    <link rel="stylesheet" href="../codeCSS/style.css">
    <link rel="stylesheet" href="../codeCSS/css.css">
</head>
<body>
    <div class="container">
    <h1>Liste des recettes</h1>

    <a href="../logout.php" class="logout">Déconnexion</a>

    <table>
        <tr>
            <th>Plat Senegalaise</th>
        </tr>

        <?php foreach ($recettes as $r) { ?>
        <tr>
            <td>
                <a href="details.php?id=<?php echo $r['id']; ?>">
                    <?php echo $r['titre']; ?>
                </a>
            </td>
        </tr>
        <?php } ?>
    </table>
</div>

</body>


</html>
