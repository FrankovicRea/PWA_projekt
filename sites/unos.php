<?php
include 'connect.php';

if (isset($_POST['naslov']) 
AND isset($_POST['sazetak']) 
AND isset($_POST['tekst']) 
AND isset($_POST['kategorija']))
{
 $naslov=$_POST['naslov'];
 $sazetak=$_POST['sazetak'];
 $tekst=$_POST['tekst'];
 $kategorija=$_POST['kategorija'];
 $slika = $_FILES['slika']['name'];
 $datum=date('d.m.Y.');
 if(isset($_POST['prikaz'])){
     $prikaz=1;
}else{
    $prikaz=0;
}
$target_dir = '../images/'.$slika;
move_uploaded_file($_FILES["slika"]["tmp_name"], $target_dir);

/*Unos u bazu*/
$query = "INSERT INTO article (datum, naslov, sazetak, tekst, kategorija, slika, prikaz) 
VALUES ('$datum', '$naslov', '$sazetak', '$tekst', '$kategorija', '$slika', '$prikaz')";
$result = mysqli_query($dbc, $query) or die('Error querying databese.');
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
            <form enctype="multipart/form-data" action="" method="POST" class="forma">
                <h1>Unos novog članka</h1>
                <p>Koristeči sljedeću formu možete kreirati novi članak!</p>
                <label for="naslov">Naslov</label><br>
                <span id="porukaNaslov" class="poruka"></span>
                <input type="text" name="naslov" id="naslov" />
                <br><br>

                <label for="sazetak">Kratki sažetak vijesti:</label><br>
                <span id="porukaSazetak" class="poruka"></span>
                <textarea name="sazetak" id="sazetak">Kratki sažetak</textarea>
                <br><br>

                <label for="tekst">Sadržaj vijesti:</label><br>
                <span id="porukaTekst" class="poruka"></span>
                <textarea name="tekst" id="tekst">Tekst članka</textarea>
                <br><br><br>

                <span id="porukaKategorija" class="poruka"></span>
                <label for="kategorija">Odaberi kategoriju vjesti:</label><br>
                <select name="kategorija" id="kategorija">
                <option value="default" selected disabled hidden >Odaberite opciju</option>
                <option value="w_news">World News</option>
                <option value="sport">Sport</option>
                </select>
                <br><br><br>

                
                <label for="slika">Odaberi sliku za članak</label><br>
                <span id="porukaSlika" class="poruka"></span>
                <input type="file" id="slika" name="slika"/>
                <br><br><br>
                
                <input type="checkbox" id="prikaz" name="prikaz"/>
                <label for="prikaz">Želim da se članak prikazuje na stranici</label>
                <br><br>
                <button type="reset" value="Poništi">Poništi</button>
                <button type="submit" value="Prihvati" id="unos">Unesi</button>
            </form>
        </div>
        </div>

        <script type="text/javascript">
        // Provjera forme prije slanja
        document.getElementById("unos").onclick = function(event) {

        var slanjeForme = true;

        // Naslov vjesti
        var poljeTitle = document.getElementById("naslov");
        var title = document.getElementById("naslov").value;
        if (title.length < 5 || title.length > 50) {
        slanjeForme = false;
        poljeTitle.style.border="1px dashed red";
        document.getElementById("porukaNaslov").innerHTML="Naslov vjesti mora imati između 5 i 50 znakova!<br>";
        } else {
        poljeTitle.style.border="1px solid green";
        document.getElementById("porukaNaslov").innerHTML="";
        }

        // Kratki sadržaj
        var poljeAbout = document.getElementById("sazetak");
        var about = document.getElementById("sazetak").value;
        if (about.length < 10 || about.length > 150) {
        slanjeForme = false;
        poljeAbout.style.border="1px dashed red";
        document.getElementById("porukaSazetak").innerHTML="Kratki sadržaj mora imati između 10 i 150 znakova!<br>";
        } else {
        poljeAbout.style.border="1px solid green";
        document.getElementById("porukaSazetak").innerHTML="";
        }
        // Sadržaj mora biti unesen
        var poljeContent = document.getElementById("tekst");
        var content = document.getElementById("tekst").value;
        if (content.length == 0) {
        slanjeForme = false;
        poljeContent.style.border="1px dashed red";
        document.getElementById("porukaTekst").innerHTML="Sadržaj mora biti unesen!<br>";
        } else {
        poljeContent.style.border="1px solid green";
        10
        document.getElementById("porukaTekst").innerHTML="";
        }

        // Kategorija mora biti odabrana
        var poljeCategory = document.getElementById("kategorija");
        if(document.getElementById("kategorija").selectedIndex == 0) {
        slanjeForme = false;
        poljeCategory.style.border="1px dashed red";

        document.getElementById("porukaKategorija").innerHTML="Kategorija mora biti odabrana!<br>";
        } else {
        poljeCategory.style.border="1px solid green";
        document.getElementById("porukaKategorija").innerHTML="";
        }

        // Slika mora biti unesena
        var poljeSlika = document.getElementById("slika");
        var pphoto = document.getElementById("slika").value;
        if (pphoto.length == 0) {
        slanjeForme = false;
        poljeSlika.style.border="1px dashed red";
        document.getElementById("porukaSlika").innerHTML="Slika mora biti unesena!<br>";
        } else {
        poljeSlika.style.border="1px solid green";
        document.getElementById("porukaSlika").innerHTML="";
        }
        

        if (slanjeForme != true) {
        event.preventDefault();
        }

        };
        </script>

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
