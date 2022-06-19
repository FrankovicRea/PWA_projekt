<?php
include 'connect.php';
define('UPLPATH', '../images/');
$registriranKorisnik = false;


if (isset($_POST['signup'])){
    $ime = $_POST['ime'];
    $prezime = $_POST['prezime'];
    $username = $_POST['username'];
    $lozinka = $_POST['pass'];
    $razina = 0;
    $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
    //Provjera postoji li u bazi već korisnik s tim korisničkim imenom
    $sql = "SELECT korisnicko_ime FROM korisnici WHERE korisnicko_ime = ?";

    $stmt = mysqli_stmt_init($dbc);
    if (mysqli_stmt_prepare($stmt, $sql)) {
    mysqli_stmt_bind_param($stmt, 's', $username);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);
    }

    if (mysqli_stmt_num_rows($stmt)>0){
    echo 'Korisničko ime već postoji!';
    }

    else{
    // Ako ne postoji korisnik s tim korisničkim imenom - Registracija korisnika u bazi pazeći na SQL injection
    $sql = "INSERT INTO korisnici (ime, prezime, korisnicko_ime, lozinka, razina)VALUES (?, ?, ?, ?, ?)";
    $stmt = mysqli_stmt_init($dbc);
        if (mysqli_stmt_prepare($stmt, $sql)) {
        mysqli_stmt_bind_param($stmt, 'ssssd', $ime, $prezime, $username, $hashed_password, $razina);
        mysqli_stmt_execute($stmt);
        $registriranKorisnik = true;
        }
    }
}

if($registriranKorisnik == true) {
    $_SESSION['username'] = $username;
    $_SESSION['razina'] = $razina;
    $_SESSION['registriranKorisnik'] = $registriranKorisnik;
    header('Location: profil.php');
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
                <form method="POST" class="registracija">
                    <h1>Registration</h1>
                    <p>Create a new account by filling up this form!</p>
                    <label for="ime">Ime </label><br>
                    <input name="ime" type="text" id="ime" required />
                    <h3 id="porukaIme" class="poruka"></h3>
                    <br><br>
                    <label for="prezime">Prezime</label><br>
                    <input name="prezime" type="text" id="prezime" required />
                    <h3 id="porukaPrezime" class="poruka"></h3>
                    <br><br>
                    <label for="username">Korisničko ime</label><br>
                    <input name="username" type="text" id="username" required />
                    <h3 id="porukaUsername" class="poruka"></h3>
                    <br><br>
                    <label for="pass">Lozinka</label><br>
                    <input name="pass" type="password" id="pass" required />
                    <h3 id="porukaPass" class="poruka"></h3>
                    <br><br>
                    <label for="passRep">Ponovite Lozinku</label><br>
                    <input name="passRep" type="password" id="passRep" required />
                    <h3 id="porukaPassRep" class="poruka"></h3>
                    <br><br>
                    <button type="submit" name="signup" value="signup" id ="signup">Signup</button>
                    <br><br><br>
                    
                </form>
                <h3 class="iznadGumba">Already have an account?</h3>
                <a href="administration.php"><button>Login</button></a>
            </div>
        </div>

        <script type="text/javascript">
            document.getElementById("signup").onclick = function(event) {

            var slanjeForme = true;

            // Ime korisnika mora biti uneseno
            var poljeIme = document.getElementById("ime");
            var ime = document.getElementById("ime").value;
            if (ime.length == 0) {
            slanjeForme = false;
            poljeIme.style.border="2px dashed red";
            document.getElementById("porukaIme").innerHTML="<br>Unesite ime!";
            } else {
            poljeIme.style.border="2px solid green";
            document.getElementById("porukaIme").innerHTML="";
            }

            // Prezime korisnika mora biti uneseno
            var poljePrezime = document.getElementById("prezime");
            var prezime = document.getElementById("prezime").value;
            if (prezime.length == 0) {
            slanjeForme = false;
            poljePrezime.style.border="2px dashed red";
            document.getElementById("porukaPrezime").innerHTML="<br>Unesite Prezime!";
            } else {
            poljePrezime.style.border="2px solid green";
            document.getElementById("porukaPrezime").innerHTML="";
            }

            // Korisničko ime mora biti uneseno
            var poljeUsername = document.getElementById("username");
            var username = document.getElementById("username").value;
            if (username.length == 0) {
            slanjeForme = false;
            poljeUsername.style.border="2px dashed red";
            document.getElementById("porukaUsername").innerHTML="<br>Unesite korisničko ime!";
            } else {
            poljeUsername.style.border="2px solid green";
            document.getElementById("porukaUsername").innerHTML="";
            }

            // Provjera podudaranja lozinki
            var poljePass = document.getElementById("pass");
            var pass = document.getElementById("pass").value;
            var poljePassRep = document.getElementById("passRep");
            var passRep = document.getElementById("passRep").value;
            if (pass.length == 0 || passRep.length == 0 || pass != passRep) {
            slanjeForme = false;
            poljePass.style.border="2px dashed red";
            poljePassRep.style.border="2px dashed red";
            document.getElementById("porukaPass").innerHTML="<br>Lozinke nisu iste!";
            document.getElementById("porukaPassRep").innerHTML="<br>Lozinke nisu iste!";
            } else {
            poljePass.style.border="2px solid green";
            poljePassRep.style.border="2px solid green";
            document.getElementById("porukaPass").innerHTML="";
            document.getElementById("porukaPassRep").innerHTML="";
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
