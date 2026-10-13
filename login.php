<?php
session_start();
require_once("../configuration/db.php");

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $req = $pdo->prepare("SELECT * FROM users WHERE email = ?");
    $req->execute([$email]);
    $user = $req->fetch();

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user'] = $user['email'];
        header("Location: recettes.php");
        exit;
    } else {
        $erreur = "Email ou mot de passe incorrect";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Connexion - MamaCook</title>

    <!-- ⚠️ LIEN CSS CORRECT -->
    <link rel="stylesheet" href="../codeCSS/style.css">
    <link rel="stylesheet" href="../codeCSS/css.css">
</head>
<body class="login">

<div class="login-box">
    <h2>CONNECTEZ VOUS A MAMACOOK</h2>

    <form method="post">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Mot de passe" required>
        <button type="submit" name="login">Se connecter</button>
    </form>
</div>

</body>

</html>

