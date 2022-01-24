<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../tasarim/destek-mail.css" />
    <div class="üst">
            <a  href="panel.php"><img class="logo" src="../görseller/logo2.png" style="width: 300px; height: 80px;"></a>
            <ul class="menu">
                <li><a href="panel.php">Anasayfa</a></li>
                <li><a href="#">Hakkımızda</a></li>
                <li><a href="#">İletişim</a></li>
            </ul>
        </div>
        <div class="kategori">
            <ul class="kategori-liste">
                <li><a href="verigiris-bilgi.php">Bilgisayar Bilgi Giriş</a></li>
                <li><a href="verigiris-hata.php">Bilgisayar Hatalar Giriş</a></li>
                <li><a href="verigiris-hiz.php">Bilgisayar Hız</a></li>
                <li><a href="verigiris-oneri.php">Bilgisayar Öneri</a></li>
                <li><a href="driver-bilgi.php">Driver Bilgi Giriş</a></li>
                <li><a href="destek-mail.php">Gelen Destek</a></li>
              </ul>
        </div>
    </head>
        <body>
        <div class="orta">
                    
                    <?php 
                        $baglan= new PDO("mysql:host=localhost;dbname=pcmaps;charset=utf8","root","");
                        $sorgu=$baglan->prepare("SELECT mail,baslik,yazi FROM destek");
                        $sorgu->execute();
                        $amd=$sorgu-> fetchAll(PDO::FETCH_OBJ);
                    ?>
                    
                    <?php
                        foreach($amd as $bilgi) {?>
                        <div class="kutu">
                            <h1><?= $bilgi->baslik ?></h1>
                            <h3><?= $bilgi->yazi ?></h3>
                            <h3> <?= $bilgi->mail ?></h3>  
                            </div> 
                    <?php }?>
                    
                </div>
        </body>
        
        <footer>
         <div class="alt">
        <ul>
            <li></li>
            <li></li>
        </ul>
         </div>
        </footer> 
</html>