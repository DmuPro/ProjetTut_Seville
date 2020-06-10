<!DOCTYPE html><!-- Numéro de version du langage HTML utilisé, ici html5 -->
<html><!-- Balise princpale -->
    <head><!-- En-tête du fichier HTML -->
        <?php include('head.php');
        include ('connexion.php');?>
        <link rel="stylesheet" type="text/css" href="../CSS/articles.css">
    </head>
    <body><!-- Encadre le corps d'un fichier HTML -->
        <?php include('navbar.php') ?>
        <div class="content">
            <div class="container-fluid">
                <h2><?php echo $_POST['ArtName'] ?></h2>
                <?php
                 if ($_POST['ArtName'] != "") {
                    $req="SELECT nomArticleFR,contenuFR FROM article WHERE nomArticleFR LIKE '".$_POST['ArtName']."'";
                    $req=$dbh->query($req);
                    while ($ligne=$req->fetch()){
                    $myfile = fopen($ligne[1], "r") or die("Unable to open file!");
                    echo fread($myfile,filesize($ligne[1]));
                    fclose($myfile);
                    }
                }
                else {
                    echo "<meta http-equiv='refresh' content='0; URL=http://perso-etudiant.u-pem.fr/~nsaucet/fr/'>";
                }
                ?>
            </div>
        </div>
        <?php include('footer.php') ?>
    </body>
</html>
