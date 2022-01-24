<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../tasarim/ekipman-oneri.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <div class="üst">
            <a  href="anasayfa.php"><img class="logo" src="../görseller/logo2.png" style="width: 300px; height: 80px;"></a>
            <ul class="menu">
                <li><a href="anasayfa.php">Anasayfa</a></li>
                <li><a href="hakkımızda.php">Hakkımızda</a></li>
                <li><a href="iletisim.php">İletişim</a></li>
            </ul>
        </div>
        <div class="kategori">
            <ul class="kategori-liste">
                <li><a href="pcbilgi.php">Bilgisayar Bilgi</a></li>
                <li><a href="pchata.php">Bilgisayar Hatalar</a></li>
                <li><a href="pchiz.php">Bilgisayar Hızlandırma</a></li>
                <li><a href="parca.php">Parça Öneri</a></li>
                <li><a href="driver.php">Driver Kurulum</a></li>
                <li><a href="destek.php">Destek</a></li>
              </ul>
        </div>
    </head>
        <body>
               <div class="orta">
               <div class="kutu">
               <?php 
                        $baglan= new PDO("mysql:host=localhost;dbname=pcmaps;charset=utf8","root","");
                        $sorgu=$baglan->prepare("SELECT baslik,yazi FROM pconeri WHERE kod='KULAKLIK'");
                        $sorgu->execute();
                        $amd=$sorgu-> fetchAll(PDO::FETCH_OBJ);
                    ?>
                    <?php
                        foreach($amd as $bilgi) {?>
                            <h1><?= $bilgi->baslik ?></h1>
                            <img src="../görseller/cloud2.png" style="height:250px;">
                            <h3> <?= $bilgi->yazi ?></h3>   
                    <?php }?>
                    <?php 
                        $baglan= new PDO("mysql:host=localhost;dbname=pcmaps;charset=utf8","root","");
                        $sorgu=$baglan->prepare("SELECT yazi FROM pconeri WHERE kod='KLAVYE'");
                        $sorgu->execute();
                        $amd=$sorgu-> fetchAll(PDO::FETCH_OBJ);
                    ?>
                    <?php
                        foreach($amd as $bilgi) {?>
                            <img src="../görseller/corsair-k55.png" style="height:250px;">
                            <h3> <?= $bilgi->yazi ?></h3>   
                    <?php }?>

                    <?php 
                        $baglan= new PDO("mysql:host=localhost;dbname=pcmaps;charset=utf8","root","");
                        $sorgu=$baglan->prepare("SELECT yazi FROM pconeri WHERE kod='G102'");
                        $sorgu->execute();
                        $amd=$sorgu-> fetchAll(PDO::FETCH_OBJ);
                    ?>
                    <?php
                        foreach($amd as $bilgi) {?>
                            <img src="../görseller/g102.png" style="height:250px;">
                            <h3> <?= $bilgi->yazi ?></h3>   
                    <?php }?>
                    </div>
               </div>
               <div class="alt">
               <footer>
        <div class="footer-content">
            <h3 class="konum">the pc maps</h3>
            <p class="konum">Bilgisayar ile ilgili her şey.</p>
            <ul class="socials">
                <li><a href="https://tr-tr.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="https://twitter.com/?lang=tr" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="https://myaccount.google.com/?lang=tr" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="https://www.youtube.com" target="_blank"><i class="fa fa-youtube"></i></a></li>
                <li><a href="https://tr.linkedin.com" target="_blank"><i class="fa fa-linkedin-square"></i></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <p>copyright &copy;2021 thepcmaps.</p>
        </div>
    </footer>
    </div>
        </body>
        
</html>