<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../tasarim/destek2.css" />
    <link rel="stylesheet" type="text/css" href="../tasarim/uyari.css" />
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
        
        <?php 
        $baglan= new PDO("mysql:host=localhost;dbname=pcmaps;charset=utf8","root","");
        $mail=$_POST['mail'];
        $baslik=$_POST['baslik'];
        $yazi=$_POST['yazi'];
        if($mail=="" || $baslik==""||$yazi=="")
        {
            echo"<div id='kutu' class='uyari'>Boş alan bırakmayanız.</div>";
        }
        else{
            echo"<div id='kutu' class='onay'>Mailiniz tarafımıza ulaşmıştır.</div>";
            $ekle=$baglan->query(" INSERT INTO destek(mail,baslik,yazi) VALUES('$mail','$baslik','$yazi')",PDO::FETCH_ASSOC);
        }
        ?>
       <div class="kutu">
        <img src="../görseller/support.png">
    <form action="?" method="POST">
            <h1>Bize Mail Gönderin</h1>
        <table>
        <tr>
                <td>Mailiniz</td>
                <td>:</td>
                <td><input type="text" name="mail"></td>
            </tr>
            <tr>
                <td>Konu</td>
                <td>:</td>
                <td><input type="text" name="baslik"></td>
            </tr>
            <tr>
                <td>Sorun Detayı</td>
                <td>:</td>
                <td><textarea rows="8" cols="80" name="yazi"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><input class="buton" type="submit" value="Gönder"></td>
            </tr>
        </table>
    </form>
    
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
                <li><a href="https://tr.linkedin.com" ><i class="fa fa-linkedin-square"></i></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <p>copyright &copy;2021 thepcmaps.</p>
        </div>
    </footer>
    </div>
        </body>
        
</html>