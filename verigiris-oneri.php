<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../tasarim/verigiris-bilgi.css" />
    <link rel="stylesheet" type="text/css" href="../tasarim/uyari.css" />
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
        <?php 
        $baglan= new PDO("mysql:host=localhost;dbname=pcmaps;charset=utf8","root","");
        $baslik=$_POST['baslik'];
        $yazi=$_POST['yazi'];
        $kod=$_POST['kod'];
        
        if($baslik==""||$yazi==""||$kod=="")
        {
            echo"<div id='kutu' class='uyari'>Boş alan bırakmayanız.</div>";
        }
        else{
            echo"<div id='kutu' class='onay'>Başarıyla eklenmiştir.</div>";
            $ekle=$baglan->query(" INSERT INTO pconeri(kod,baslik,yazi) VALUES('$kod','$baslik','$yazi')",PDO::FETCH_ASSOC);
        }
        ?>
        <div class="kutu">
    <form action="?" method="POST">
            <h1>Bilgisayar Öneri</h1>
        <table>
        <tr>
                <td>Kod</td>
                <td>:</td>
                <td><input type="text" name="kod"></td>
            </tr>
            <tr>
                <td>Başlık</td>
                <td>:</td>
                <td><input type="text" name="baslik"></td>
            </tr>
            <tr>
                <td>Yazı</td>
                <td>:</td>
                <td><textarea rows="8" cols="80" name="yazi"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><input class="buton" type="submit" value="Ekle"></td>
            </tr>
        </table>
    </form>
    
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