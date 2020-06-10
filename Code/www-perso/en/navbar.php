<?php
function active($current_page){
  $url = basename($_SERVER['PHP_SELF']);
  if($current_page == $url){
      echo 'active'; //class name in css 
  } 
}
?>
<header>
            <div class="imghead">
                <img src="../image/bannière.jpg" alt="Bannière">
            </div>
            <div class="texthead">
                <h1>Seville</h1>
            </div>
        </header><!-- <header> définit l'en-tête relative au corps de la page -->
        <div id="navbar">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <img src="../image/logo_MCN_original.png" alt="icon" id="navicon">
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="<?php active('index.php');?>"><a href="index.php">Home</a></li>
                            <li class="<?php active('architecture.php');?>"><a href="architecture.php">Architecture</a></li>
                            <li class="<?php active('voyageurs.php');?>"><a href="voyageurs.php ">Travellers</a></li>
                            <li class="<?php active('timeline.php');?>"><a href="timeline.php">Timeline</a></li>
                        </ul>
                        <form class="navbar-form navbar-left" action="search.php" method="post">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search" name="search">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="li-flag"><a href="<?php echo "../fr/".basename($_SERVER['PHP_SELF']); ?>" title="français"><img src="../image/blank.gif" class="flag flag-fr" alt="français"/></a></li>
                            <li class="li-flag"><a href="<?php echo "../en/".basename($_SERVER['PHP_SELF']); ?>" title="english"><img src="../image/blank.gif" class="flag flag-gb" alt="english"/></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
