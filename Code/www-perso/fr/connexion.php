<?PHP
include('parametre.inc.php');
?>
<?php
try{
$con='mysql:host='.$host.';dbname='.$db;
$dbh = new PDO($con,$user,$pwd,array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
$dbh->exec("set names utf8");
}
catch(Exception $e){
die('Connexion impossible à la base de données !'.$e->
getMessage());
}
?>
