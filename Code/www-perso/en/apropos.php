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
                <h2>about</h2>
                <h3><i class="fas fa-info"></i>The project</h3>
                    <p>We are a team of 4 students in the 1st year of Computer science's DUT at the IUT of Marne-la-Vallée. We have been commissioned to carry out a project in partnership with UNESCO to design a website on the World Heritage site of Seville.<br>
                    In addition, the UNESCO's documentation center (Icomos Paris) has opened its doors to us in order to be able to obtain as much quality content as possible.</p>
                <h3><i class="far fa-address-card"></i>The team</h3>
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
                                <p>Project manager</p>
                                <p>Content manager</p>
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
                                <p>Development Manager</p>
                                <p>Manager</p>
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
                                <p>Speaker</p>
                                <p>Developer</p>
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
                                <p>Content manager</p>
                                <p>&nbsp </p>
                                <a class="btn btn-social-icon btn-linkedin" target="about:blank" href="https://www.linkedin.com/in/julien-quetin-3960b2175/">
                                    <i class="fa fa-linkedin-square"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <h3><i class="fas fa-code"></i>Technology</h3>
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
                <h3><i class="fas fa-book"></i>Credits</h3>
                <h6>Pictures :</h6>
                <ul>
                <li>UNESCO</li>
                <li>ICOMOS</li>
                </ul>
                <h6>Documentation :</h6>
                <ul>
                <li>ICOMOS</li>
                </ul>
                <h3><i class="far fa-handshake"></i>Our partners</h3>
                <div class="part">
                    <a href="http://www.u-pem.fr/" target="about:blank"><img src="../image/UPEM.png" class="img-responsive"></a>
                    <a href="https://en.unesco.org/" target="about:blank"><img src="../image/unesco.png" class="img-responsive"></a>
                    <a><img src="../image/forumunesco.png" class="img-responsive"></a>
                    <a href="http://idea.univ-paris-est.fr/fr" target="about:blank"><img src="../image/idea.png" class="img-responsive"></a>
                    <a href="ttps://anr.fr/en/" target="about:blank"><img src="../image/ANR.png" class="img-responsive"></a>
                    <a><img src="../image/invavenir.png" class="image-responsive"></a>
                </div>
            </div>
        </div>
        <?php include('footer.php') ?>
    </body>
</html>
