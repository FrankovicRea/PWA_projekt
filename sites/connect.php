<?php
header('Content-Type: text/html; charset=utf-8');
$servername = "localhost";
$user = "root";
$password = "";
$basename = "pwa_projekt";

$dbc = mysqli_connect($servername, $user, $password, $basename) or die('Error
connecting to MySQL server.'.mysqli_error());
mysqli_set_charset($dbc, "utf8");

session_start();
if (isset($_SESSION['registriranKorisnik'])){
    $registriranKorisnik = $_SESSION['registriranKorisnik'];
    $username = $_SESSION['username'];
    $level = $_SESSION['razina'];
}


?>