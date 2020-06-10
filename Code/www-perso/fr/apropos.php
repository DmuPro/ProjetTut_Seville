<!DOCTYPE html><!-- Numéro de version du langage HTML utilisé, ici html5 -->


<html><!-- Balise princpale -->
    <head><!-- En-tête du fichier HTML -->
        <?php include('head.php') ?>
        <link rel="stylesheet" type="text/css" href="../CSS/apropos.css">
    </head>
    <body><!-- Encadre le corps d'un fichier HTML -->
        <?php include('navbar.php') ?>
        <div class="content">
            <div class="container container-home" >
                <h2>à propos</h2>
                <h3><i class="fas fa-info"></i>Le projet</h3>
                    <p>Nous sommes une équipe de 4 étudiants en 1ère année de DUT Informatique à l'IUT de Marne-la-Vallée. Nous avons été chargé de réaliser un projet en partenariat avec l'UNESCO qui a pour but de concevoir un site internet sur le patrimoine mondial qu'est Séville.<br>
                    De plus, le centre de documentation de l'UNESCO (Icomos Paris) nous a ouvert ses portes afin de pouvoir en tirer un maximum de contenu de qualité.</p>
                <h3><i class="far fa-address-card"></i>L'équipe</h3>
                <div class="row-eq-height">
                    <div class="col-12 col-md-15 col-sm-6">
                        <div class="card-wrapper">
                            <div class="flip-card">
                                <div class="flip-card-inner">
                                    <img src="../image/Davy.jpg" alt="Davy" title="" media-simple="true">
                                </div>
                            </div>
                            <div class="card-box">
                                <h5 class="card-title pb-3 mbr-fonts-style display-7">Davy Mu</h5>
                                <p>Chef de projet</p>
                                <p>Chargé du contenu</p>
                                <a class="btn btn-social-icon btn-linkedin" target="about:blank" href="https://www.linkedin.com/in/davy-mu-315291173/">
                                    <i class="fa fa-linkedin-square"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-15 col-sm-6">
                        <div class="card-wrapper">
                            <div class="flip-card">
                                <div class="flip-card-inner">
                                    <img src="../image/Nathan.jpg" alt="Nathan" title="" media-simple="true">
                                </div>
                            </div>
                            <div class="card-box">
                                <h5 class="card-title pb-3 mbr-fonts-style display-7">Nathan Saucet</h5>
                                <p>Responsable developpement</p>
                                <p>Manageur</p>
                                <a class="btn btn-social-icon btn-linkedin" target="about:blank" href="https://linkedin.com/in/nathan-saucet">
                                    <i class="fa fa-linkedin-square"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-15 col-sm-6">
                        <div class="card-wrapper">
                            <div class="flip-card">
                                <div class="flip-card-inner">
                                    <img src="../image/Teddy.jpg" alt="Teddy" title="" media-simple="true">
                                </div>
                            </div>
                            <div class="card-box">
                                <h5 class="card-title pb-3 mbr-fonts-style display-7">Teddy Ouazzani</h5>
                                <p>Communicant</p>
                                <p>Developpeur</p>
                                <a class="btn btn-social-icon btn-linkedin" target="about:blank" href="https://www.linkedin.com/in/teddy-ouazzani-3750b2175/">
                                    <i class="fa fa-linkedin-square"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-15 col-sm-6">
                        <div class="card-wrapper">
                            <div class="flip-card">
                                <div class="flip-card-inner">
                                    <img src="../image/Julien.jpg" alt="Julien" title="" media-simple="true">
                                </div>
                            </div>
                            <div class="card-box">
                                <h5 class="card-title pb-3 mbr-fonts-style display-7">Julien Quetin</h5>
                                <p>Chargé du contenu</p>
                                <p>&nbsp </p>
                                <a class="btn btn-social-icon btn-linkedin" target="about:blank" href="https://www.linkedin.com/in/julien-quetin-3960b2175/">
                                    <i class="fa fa-linkedin-square"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <h3><i class="fas fa-code"></i>Technologies</h3>
                <div class="techno">
                    <i class="fab fa-font-awesome"></i>
                    <i class="fab fa-bootstrap"></i>
                    <i class="fab fa-html5"></i>
                    <i class="fab fa-css3-alt"></i>
                    <i class="fab fa-less"></i>
                    <i class="fab fa-js-square"></i>
                    <i class="fab fa-php"></i>
                    <i class="fas fa-database"></i>
                </div>
                <h3><i class="fas fa-book"></i>Crédits</h3>
                <h6>Photos :</h6>
                <ul>
                <li>UNESCO</li>
                <li>ICOMOS</li>
                </ul>
                <h6>Documentation :</h6>
                <ul>
                <li>ICOMOS</li>
                </ul>
                <h3><i class="far fa-handshake"></i>Nos partenaires</h3>
                <div class="part">
                    <a href="http://www.u-pem.fr/" target="about:blank"><img src="../image/UPEM.png" class="img-responsive"></a>
                    <a href="https://fr.unesco.org/" target="about:blank"><img src="../image/unesco.png" class="img-responsive"></a>
                    <a><img src="../image/forumunesco.png" class="img-responsive"></a>
                    <a href="http://idea.univ-paris-est.fr/fr" target="about:blank"><img src="../image/idea.png" class="img-responsive"></a>
                    <a href="https://anr.fr/" target="about:blank"><img src="../image/ANR.png" class="img-responsive"></a>
                    <a><img src="../image/invavenir.png" class="image-responsive"></a>
                </div>
            </div>
        </div>
        <?php include('footer.php') ?>
    </body>
</html>
