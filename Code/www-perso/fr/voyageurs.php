<!DOCTYPE html><!-- Numéro de version du langage HTML utilisé, ici html5 -->

<?php
include ('connexion.php');
?>

<html><!-- Balise princpale -->
    <head><!-- En-tête du fichier HTML -->
        <?php include('head.php') ?>
        <link rel="stylesheet" type="text/css" href="../CSS/voyageur.css">
    </head>
    <body><!-- Encadre le corps d'un fichier HTML -->
        <?php include('navbar.php') ?>
        <div class="content">
            <div class="container-fluid">
                <h2>écrivains et voyageurs</h2>
                <?php
                $req="SELECT img,nomVoyageur,contenuFR FROM voyageur NATURAL JOIN image";
                $req=$dbh->query($req);
                while ($ligne=$req->fetch()){

                echo"<div class='voyageur'>
                    <div class='card float-right'>
                        <div class='row'>
                            <div class='col-sm-5'>";
                                echo"<img class='d-block w-100 imgvoyageur' src='../image/".$ligne[0]."' alt=".$ligne[1].">";
                            echo"</div>
                            <div class='col-sm-7'>
                                <div class='card-block'>";
                                    echo "<p><b>".$ligne[1]."</b></p>";
                                    echo $ligne[2];
                                echo"</div>
                            </div>
                        </div>
                    </div>
                </div>";
 
                }
                ?>
                
            </div>
        </div>
        <?php include('footer.php') ?>
    </body>
</html>
