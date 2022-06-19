<?php
include 'connect.php';
define('UPLPATH', '../images/');


if (isset($_POST['logout'])){
    $registriranKorisnik = false;
    $_SESSION['registriranKorisnik'] = $registriranKorisnik;
    header('Location: administration.php');
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
            <div class="row">
                <div class="profil">
                    <img src="../images/profile.jpg" alt="profile photo" title="profile photo" width="50%">    
                    <h2>Prijavljeni ste kao <?php echo $username;?></h2>
                    <?php 
                    if ($level == 0){
                        echo '<h3>Nemate administracijska prava!</h3>';
                    }
                    if ($level == 1){
                        echo '<h3>Imate administracijska prava!</h3>';
                        echo '<a href="izmjena.php"><button>Izmjena postojećih članaka</button></a>';
                        echo '<a href="unos.php"><button>Unos novog članka</button></a>';
                    }
                    
                    ?>
                    <form method="POST">
                    <button type="submit" name="logout" value="logout" id ="logout">Logout</button>
                    </form>
                </div>
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
