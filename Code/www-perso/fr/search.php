<!DOCTYPE html><!-- Numéro de version du langage HTML utilisé, ici html5 -->
<html><!-- Balise princpale -->
    <head><!-- En-tête du fichier HTML -->
        <?php include('head.php');
              include('connexion.php');?>
        <link rel="stylesheet" type="text/css" href="../CSS/voyageur.css">
        <link rel="stylesheet" type="text/css" href="../CSS/search.css">
    </head>
    <body><!-- Encadre le corps d'un fichier HTML -->
        <?php include('navbar.php') ?>
        <div class="content">
            <div class="container-fluid">
                <form action="article.php" method="post">
                    <h2>Résultat</h2>
                <?php
                if ($_POST['search'] != "")  {
                    $req="SELECT nomArticleFR,descArtFR,imgMin FROM article NATURAL JOIN image WHERE nomArticleFR LIKE '%".$_POST['search']."%'";
                    $req=$dbh->query($req);
                    while ($ligne=$req->fetch()){
                        echo "
                        <div class='voyageur'>
                            <a>
                                <div class='card float-right'>
                                    <div class='row'>
                                        <div class='col-sm-5'>
                                            <img class='d-block w-100 imgvoyageur' src='../image/".$ligne[2]."' alt='".$ligne[0]."'>
                                        </div>
                                        <div class='col-sm-7'>
                                            <div class='card-block'>
                                                <p><b>".$ligne[0]."</b></p>
                                                <p>".$ligne[1]."</p>
                                                <p><button class='btn btn-md btn-primary' type='submit'  name='ArtName' value='".$ligne[0]."'>En savoir +</button></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>";
                    } 
                }
                else {
                    echo "<meta http-equiv='refresh' content='0; URL=http://perso-etudiant.u-pem.fr/~nsaucet/fr/'>";
                }
                
                ?>
                </form>
            </div>
        </div>
        <?php include('footer.php') ?>
    </body>
</html>
