<?php
include 'connect.php';
define('UPLPATH', '../images/');

$id = $_GET['id'];

$query = "SELECT * FROM article WHERE id=$id";
$result = mysqli_query($dbc, $query);
$row = mysqli_fetch_array($result);

if ($row['kategorija']="w_news"){
    $kategorija = "World news";
}
else{
    $kategorija = "Sport";
}
?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>article.</title>
        <meta charset="utf-8" />
        <meta name="author" content="Rea Franković" />
        <meta name="description" content="Programiranje Web Aplikacija: Zavrsni projekt" />


        <link rel="stylesheet" href="../css/style.css" type="text/css" />
        <link rel="icon" href="../images/favicon.ico" />

    </head>

    <body>
    <header id="top">
            <a href="../index.php"><img src="../images/logo.png" alt="article. logo" title="article. logo"></a>
        </header>
        <nav>
            <ul>
                <li><a href="../index.php"> Home </a></li>
                <li><a href="world_news.php"> World News </a></li>
                <li><a href="sports.php"> Sport </a></li>
                <li><a href="administration.php"> Administration </a></li>

            </ul>
        </nav>

        <div class="main">
                <div id="news_article">
                    <h3><?php echo $kategorija; ?></h3>
                    <h1><?php echo $row['naslov']; ?></h1>
                    <h2><?php echo $row['sazetak']; ?></h2>
                    <p><?php echo $row['datum']; ?></p>
                    <?php echo '<img src="' . UPLPATH . $row['slika'] . '">';?>
                    <article><?php echo $row['tekst']; ?></article>
                </div>
        </div>

        <footer>
            <p>
                <br> Rea Franković
                <br>rfrankovi@tvz.hr<br><br>
                <i>Programiranje Web Aplikacija 2021./22.</i>
              </p>
          </footer>
  
          <span id="up"><a href="#top"><img src="../images/up.png" alt="Up arrow" title="Up arrow" width="60px"></a></span>

    </body>
</html>
