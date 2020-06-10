<!DOCTYPE html><!-- Numéro de version du langage HTML utilisé, ici html5 -->
<html><!-- Balise princpale -->
    <head><!-- En-tête du fichier HTML -->
        <?php include('head.php');
        include('connexion.php');?>
        <link rel="stylesheet" type="text/css" href="../CSS/architecture.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" integrity="sha256-HAaDW5o2+LelybUhfuk0Zh2Vdk8Y2W2UeKmbaXhalfA=" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js" integrity="sha256-Y1rRlwTzT5K5hhCBfAFWABD4cU13QGuRN6P5apfWzVs=" crossorigin="anonymous"></script>
        
    </head>
    <body><!-- Encadre le corps d'un fichier HTML -->
        <?php include('navbar.php') ?>
        <div class="content">
            <div class="container-fluid">
                <h2>Monuments</h2>
                <?php
                $req2 ="SELECT nomMonumentEN FROM monument";
                $req2=$dbh->query($req2);
                while ($ligne2=$req2->fetch()){
                        echo "<div class='row'>
                    <h3><i class='fas fa-camera'></i>".$ligne2[0]."</h3>";
                    $req="SELECT img, imgMin, source, nomMonumentEN FROM image NATURAL JOIN monument WHERE nomMonumentEN LIKE '".$ligne2[0]."'";
                    $req=$dbh->query($req);
                    while ($ligne=$req->fetch()){
                        if ($ligne[1] != NULL) {
                          echo "<div class='col-12 col-md-6 col-lg-4'>
                            <div class='thumbnail'>
                                <a href='".$ligne[0]."' data-toggle='lightbox' data-gallery='".$ligne[3]."'><div class='imgAr'/><img class='img-fluid img-rounded img-responsive' src='".$ligne[1]."' alt='".$ligne[3]."'></div></a>
                                <div class='caption'>
                                  <p>".$ligne[3]."</p>
                                  <p class='src'>Source : ".$ligne[2]."</p>
                                </div>
                              </a>
                            </div>
                          </div>";
                        }
                        else {
                          echo "<div class='col-12 col-md-6 col-lg-4'>
                            <div class='thumbnail'>
                                <a href='".$ligne[0]."' data-toggle='lightbox' data-gallery='".$ligne[3]."'><div class='imgAr'/><img class='img-fluid img-rounded img-responsive' src='".$ligne[0]."' alt='".$ligne[3]."'></div></a>
                                <div class='caption'>
                                  <p>".$ligne[3]."</p>
                                  <p class='src'>Source : ".$ligne[2]."</p>
                                </div>
                              </a>
                            </div>
                          </div>";
                        }
                    }
                    echo "</div>";
                }
                ?>
            </div>
        </div>
        <?php include('footer.php') ?>
        <script>$(document).on('click', '[data-toggle="lightbox"]', function(event) {
                event.preventDefault();
                $(this).ekkoLightbox();
            });</script>
    </body>
</html>
