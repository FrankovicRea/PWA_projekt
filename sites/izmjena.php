<?php
include 'connect.php';
define('UPLPATH', '../images/');

if(isset($_POST['delete'])){
    $id=$_POST['id'];
    $query = "DELETE FROM article WHERE id=$id ";
    $result = mysqli_query($dbc, $query);
}


if(isset($_POST['update'])){
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

    $id=$_POST['id'];
    $query = "UPDATE article SET naslov='$naslov', sazetak='$sazetak', tekst='$tekst',
    slika='$slika', kategorija='$kategorija', prikaz='$prikaz' WHERE id=$id ";
    $result = mysqli_query($dbc, $query);
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
        <h2>Izmjena postojećih vijesti</h2>
        <p>Ovdje možete mijenjati sadržaj postoječih vijesti.</p>
        <br><hr><br>
        <div class="row">
        <?php 
            $query = "SELECT * FROM article";
            $result = mysqli_query($dbc, $query);
            while($row = mysqli_fetch_array($result)) {
            echo '<div class="forma2">';
                        echo '<form enctype="multipart/form-data" action="" method="POST">
                            <label for="naslov">Naslov vjesti:</label><br>
                            <input type="text" name="naslov" class="form-field-textual" value="'.$row['naslov'].'">
                            <br><br>
                            <label for="sazetak">Kratki sažetak vijesti:</label><br>
                            <textarea name="sazetak" id="" cols="30" rows="10" class="formfield-textual">'.$row['sazetak'].'</textarea>
                            <br><br>
                            <label for="tekst">Sadržaj vijesti:</label><br>
                            <textarea name="tekst" id="" cols="30" rows="10" class="formfield-textual">'.$row['tekst'].'</textarea>
                            <br><br>
                            <label for="slika">Slika:</label><br>
                            <input type="file" class="input-text" id="slika"value="'.$row['slika'].'" name="slika"/> 
                            <br><img src="' . UPLPATH .$row['slika'] . '">
                            <br><br>
                            <label for="kategorija">Kategorija vijesti:</label><br>
                            <select name="kategorija" id="" class="form-field-textual" value="'.$row['kategorija'].'">
                            <option value="w_news">World News</option>
                            <option value="sport">Sport</option>
                            </select>
                            <br><br>
                            <label>Prikaz na stranici:';
                                if($row['prikaz'] == 0) {
                                echo '<input type="checkbox" name="prikaz" id="prikaz"/> Prikazuj.';
                                } else {
                                echo '<input type="checkbox" name="prikaz" id="prikaz" checked/> Prikazuj';
                                }
                                echo '</label><br><br>
                            <input type="hidden" name="id" class="form-field-textual" value="'.$row['id'].'">
                            <button type="reset" value="Poništi">Poništi</button>
                            <button type="submit" name="update" value="Prihvati">Izmjeni</button>
                            <button type="submit" name="delete" value="Izbriši">Izbriši</button>
                        </form>
                    </div>';}
        ?>

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
