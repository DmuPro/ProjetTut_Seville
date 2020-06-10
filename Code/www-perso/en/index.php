<!DOCTYPE html><!-- Numéro de version du langage HTML utilisé, ici html5 -->
<html><!-- Balise princpale -->
    <head><!-- En-tête du fichier HTML -->
        <?php include('head.php');
        include('connexion.php');?>
        <link rel="stylesheet" type="text/css" href="../CSS/accueil.css">
    </head>
    <body><!-- Encadre le corps d'un fichier HTML -->
        <?php include('navbar.php') ?>
        <div class="content">
        <form action="article.php" method="post">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <?php
                        $req="SELECT nomArticleEN,img FROM article NATURAL JOIN image LIMIT 3";
                        $x=0;
                        $req=$dbh->query($req);
                        while ($ligne=$req->fetch()){
                            if($x==0) {
                                echo "<div class='item active'>";
                                    echo "<img src='".$ligne[1]."' alt='".$ligne[0]."'>";
                                    echo "<div class='carousel-caption'>";
                                        echo "<h6>".$ligne[0]."</h6>";
                                        echo "<p><button class='btn btn-md btn-primary' type='submit' name='ArtName' value='".$ligne[0]."'>See more</button></p>";
                                    echo "</div>
                                </div>";
                                $x +=1;
                            }
                            else {
                                echo "<div class='item'>";
                                    echo "<img src='".$ligne[1]."' alt='".$ligne[0]."'>";
                                    echo "<div class='carousel-caption'>";
                                        echo "<h6>".$ligne[0]."</h6>";
                                        echo "<p><button class='btn btn-md btn-primary' type='submit' name='ArtName' value='".$ligne[0]."'>See more</button></p>";
                                    echo "</div>
                                </div>";
                            }
                        }
                        ?>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            <div class="container container-home" >
                <h2>world heritage site</h2>
                <img class="img-responsive center-block"src="../image/carte.png"></img>
                <h2>ARTICLES</h2>
                <div class="container">
                    <div class="media-container-row">
                        <?php
                            $req2 = "SELECT nomArticleEN,descArtEN,imgMin FROM article NATURAL JOIN image LIMIT 6";
                            $req2=$dbh->query($req2);
                            while ($ligne2=$req2->fetch()){
                                echo"<div class='card p-3 col-12 col-md-6 col-lg-4'>
                                    <div class='card-wrapper'>
                                        <div class='card-img'>";
                                            echo"<img src='".$ligne2[2]."' alt='".$ligne2[0]."' media-simple='true'>";
                                        echo "</div>
                                        <div class='card-box'>
                                            <div class='textArticle'>";
                                                echo "<h4 class='card-title pb-3 mbr-fonts-style display-7'><i class='far fa-newspaper'></i>".$ligne2[0]."</h4>";
                                                echo "<p class='mbr-text mbr-fonts-style display-7'>".$ligne2[1];
                                                echo "</p>
                                            </div>";
                                            echo "<p><button class='btn btn-md btn-primary' type='submit'  name='ArtName' value='".$ligne2[0]."'>See more</button></p>
                                        </div>
                                    </div>
                                </div>";
                            }
                        ?>
                    </div>
                </div>
            </div>
        </form>
        </div>
        <?php include('footer.php') ?>
    </body>
</html>