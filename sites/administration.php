<?php
include 'connect.php';
define('UPLPATH', '../images/');
$poruka = '';

if (isset($_POST["login"])) {

    $user = $_POST["username"];
    $password = $_POST["lozinka"];
    $query = "SELECT korisnicko_ime, lozinka, razina FROM korisnici WHERE korisnicko_ime = ?;";
    $stmt = mysqli_stmt_init($dbc);

    if (mysqli_stmt_prepare($stmt, $query)) {
        mysqli_stmt_bind_param($stmt, 's', $user);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
        mysqli_stmt_bind_result($stmt, $username, $hash, $level);
        mysqli_stmt_fetch($stmt);
        echo "<br>" . $username . "<br>" . $hash . "<br>" . $level . "<br>";


        if (password_verify($password, $hash)) {
            $poruka = "Prijava je uspjela";
            $registriranKorisnik = true;
        } else {
            $poruka = "Unijeli ste pogrešno korisničko ime ili lozinku.";
            $registriranKorisnik = false;
        }

        mysqli_stmt_close($stmt);
    }
}

if (isset($registriranKorisnik)){
    if($registriranKorisnik == true) {
        $_SESSION['username'] = $username;
        $_SESSION['razina'] = $level;
        $_SESSION['registriranKorisnik'] = $registriranKorisnik;
        header('Location: profil.php');
    }
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
            <div class="forma">
            <form enctype="multipart/form-data" action="" method="POST">
                <h1>Login</h1>
                <p>Log into an existing account!</p>
                <label for="username">Korisničko Ime</label><br>
                <input type="text" name="username" id="username" />
                <h3 id="porukaUsername" class="poruka"></h3>
                <br><br>
                <label for="lozinka">Lozinka</label><br>
                <input type="password" name="lozinka" id="lozinka" />
                <h3 id="porukaLozinka" class="poruka"></h3>
                <br>
                <h3 class="poruka"><?php echo $poruka; ?></h3><br>
                <button type="submit" value="login" id="login" name="login" >Login</button>
            </form>
            <h3 class="iznadGumba">Don't have an account?</h3>
            <a href="registracija.php"><button>Registracija</button></a>
            </div>
        </div>

        <script type="text/javascript">
            document.getElementById("login").onclick = function(event) {

            var slanjeForme = true;
                // Korisničko ime mora biti uneseno
            var poljeUsername = document.getElementById("username");
            var username = document.getElementById("username").value;
            if (username.length == 0) {
                slanjeForme = false;
                poljeUsername.style.border="2px dashed red";
                document.getElementById("porukaUsername").innerHTML="Unesite korisničko ime!<br>";
            } else {
            poljeUsername.style.border="2px solid green";
            document.getElementById("porukaUsername").innerHTML="";
            }

            // Lozinka mora biti unesena
            var poljePass = document.getElementById("lozinka");
            var lozinka = document.getElementById("lozinka").value;
            if (lozinka.length == 0) {
                slanjeForme = false;
                poljePass.style.border="2px dashed red";
                document.getElementById("porukaLozinka").innerHTML="Unesite lozinku!<br>";
            } else {
            poljePass.style.border="2px solid green";
            document.getElementById("porukaLozinka").innerHTML="";
            }

            if (slanjeForme != true) {
            event.preventDefault();
            }

            };
        </script>
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
