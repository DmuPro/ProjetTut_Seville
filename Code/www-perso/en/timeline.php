<!DOCTYPE html><!-- Numéro de version du langage HTML utilisé, ici html5 -->

<?php
include ('connexion.php');
?>

<html><!-- Balise princpale -->

    <head><!-- En-tête du fichier HTML -->
        <?php include('head.php') ?>
        <link rel="stylesheet" type="text/css" href="../CSS/timeline.css">
    </head>
    <body><!-- Encadre le corps d'un fichier HTML -->
        <?php include('navbar.php') ?>
        <div class="content">
            <div class="container-fluid">
                <h2>History of Seville</h2>
                <div class="timeline">
                <?php
                $req="SELECT periode,descChronoEN FROM chronologie ORDER BY date";
                $req=$dbh->query($req);
                $a = 0;
                while ($ligne=$req->fetch()){
                    if (!($a%2)){
                    echo"<div class='container left'>";
                        echo"<div class='timelineText'>";
                            echo"<h6>".$ligne[0]."</h6>";
                            echo"<p>".$ligne[1]."</p>";
                        echo"</div>";
                    echo"</div>";
                    }
                    if ($a%2){
                    echo"<div class='container right'>";
                        echo"<div class='timelineText'>";
                            echo"<h6>".$ligne[0]."</h6>";
                            echo"<p>".$ligne[1]."</p>";
                        echo"</div>";
                    echo"</div>";
                    }
                    $a +=1;
                }
                ?>
                </div>
            </div>
        </div>
        <?php include('footer.php') ?>
    </body>
</html>
