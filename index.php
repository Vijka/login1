<?php
session_start();
include("connect.php");
// Pārbaude, vai lietotājs ir pieteicies
$isLoggedIn = isset($_SESSION['email']);
if ($isLoggedIn) {
    $email = $_SESSION['email'];
    $query = mysqli_query($conn, "SELECT firstName, lastName FROM users WHERE email='$email'");
    $user = mysqli_fetch_assoc($query);
}
?>
<!DOCTYPE html>
<html lang="lv">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restorāns OP - Mājas lapa</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <h1>Restorāns</h1>
        <div class="logo-container">
            <img src="images/fork-knife.png" alt="Dakšiņa un nazis" class="logo">
        </div>
        <nav>
            <ul>
                <li><a href="#home">Mājas</a></li>
                <li><a href="#contact">Kontaktinformācija</a></li>
                <li><a href="#offer">Šīs dienas piedāvājums</a></li>
                <?php if ($isLoggedIn): ?>
                    <li><a href="#profile">Profils</a></li>
                    <li><a href="logout1.php">Izrakstīties</a></li>
                <?php else: ?>
                    <li><a href="autorizacija.php">Pieslēgties</a></li>
                <?php endif; ?>
            </ul>
        </nav>
    </header>
    <section id="home">
        <h2>Laipni lūdzam Restorānā!</h2>
        <p>Izmēģiniet mūsu gardos ēdienus un izbaudiet šodienas piedāvājumus.</p>
    </section>
    <?php if ($isLoggedIn): ?>
        <section id="profile">
            <h2>Sveiki, <?php echo $user['firstName'] . ' ' . $user['lastName']; ?>!</h2>
            <p><strong>E-pasts:</strong> <?php echo $email; ?></p>
            <p><strong>Lomu un citu informāciju, ja nepieciešams, var parādīt šeit.</strong></p>
        </section>
    <?php endif; ?>
    <section id="offer">
        <h2>Šīs dienas piedāvājums</h2>
        <div class="offer">
            <div class="image-container">
                <a href="offer1.html"><img src="images/image1.jpg" alt="Piedāvājums 1"></a>
            </div>
            <div class="image-container">
                <a href="offer2.html"><img src="images/image2.jpg" alt="Piedāvājums 2"></a>
            </div>
        </div>
        <p>Tikai šodien - pērc trīs un maksā par četriem. Cena tikai 9,99 + 9,99 par katru nākamo pirkumu.</p>
    </section>
    <section id="contact">
        <h2>Kontaktinformācija</h2>
        <p>Adrese: Rīga, Brīvības iela 123</p>
        <p>Tālrunis: +371 12345678</p>
        <p>E-pasts: info@restoransop.lv</p>
    </section>
    <footer>
        <p>&copy; 2024 Vikas Restorāns. Visas tiesības aizsargātas.</p>
    </footer>
</body>
</html>