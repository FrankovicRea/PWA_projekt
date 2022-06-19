<?php
include 'connect.php';
define('UPLPATH', '../images/');

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
            <h2> World News </h2>
            <div class="row">
            <?php
            $query = "SELECT * FROM article WHERE prikaz=1 AND kategorija='w_news'";
            $result = mysqli_query($dbc, $query);
            $i=0;
            while($row = mysqli_fetch_array($result)) {

            echo'<div id="news_item">';
            echo '<img src="' . UPLPATH . $row['slika'] . '">';
            echo '<h3>';
            echo $row['sazetak'];
            echo '</h3>';

            echo '<h1>';
            echo '<a href="news_article.php?id='.$row['id'].'">';
            echo $row['naslov'];
            echo '</a>';
            echo '</h1>';

            echo '<p>';
            echo $row['datum'];
            echo '</p>';

            echo '</div>';
            }?> 
            </div></div>

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
