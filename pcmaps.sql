-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Haz 2021, 16:12:23
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pcmaps`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `destek`
--

CREATE TABLE `destek` (
  `id` int(11) NOT NULL,
  `mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yazi` varchar(15000) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `destek`
--

INSERT INTO `destek` (`id`, `mail`, `baslik`, `yazi`) VALUES
(1, 'mcht557@hotmail.com', 'Driver Hata', 'Driver kurarken hata alıyorum'),
(4, 'mucahitferhat@hotmail.com', 'Bilgisayarım Açılmıyor', 'Bilgisayarı açıyorum fakat ekran gelmiyor, bilgisayar çalışıyor yardımcı olur musunuz?');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yazi` varchar(1500) COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `driver`
--

INSERT INTO `driver` (`id`, `baslik`, `yazi`, `kod`) VALUES
(1, 'Driver Kurulum', 'CPUZ <br/>\r\nEğer ki bilgisayarınızın anakartını veya herhangi bir bilgisini bilmiyorsanız. Bu programı indirerek bilgisayarınızın anakartından tutun her parçasının markasını ve modelini öğrenebilirsiniz. Driver kurulumunda ilk önceliğimiz anakart modelini bilmek. Öğrenmek için aşağıdaki linkten indirebilirsiniz. <br/>', 'CPUZ'),
(2, 'ANAKART', 'Anakart modelini öğrendiğimize göre artık driverlarımızı kurabiliriz. Ben örnek olarak MSİ b450 Tomahawk Max ankartını göstereceğim. İlk önce tarayıcımızı açıp anakart modelini driver indir yazalım.', 'ANAKART'),
(3, 'DRİVER', 'İlk çıkan siteye giriyoruz ve karşımıza aşağıdaki görsel gibi bir ekran çıkacak. Oradan Driver veya Sürücü yazan yere tıklayacağız ve 2. görseldeki gibi bir ekran çıkacak karşımıza. Burada ise işletim sistemimizi seçelim ve sonra sırayla + butonuna basıp hepsini indirelim.', 'DRİVER'),
(4, 'INDIRME', 'Hepsini sırayla indirdiyseniz rar içerisine girip setup.exe yazan dosyalara çift tıklayarak kurulumları yapabilirsiniz. Hepsinde ileri ileri diyerek kuracaksınız. Driver kurulumu bu kadar basit.', 'INDIRME');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pcbilgi`
--

CREATE TABLE `pcbilgi` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yazi` varchar(1500) COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `pcbilgi`
--

INSERT INTO `pcbilgi` (`id`, `baslik`, `yazi`, `kod`) VALUES
(1, 'Amd İşlemci', 'AMD işlemcileri 3\'e ayrılır. Giriş, orta ve üst seviye adı olmak üzere 3\'e ayrılmıştır. Amd işlemcilerin son serisi olan 3xxx serisi en iyi serileridir ve İntel işlemcilerden daha performanslıdır. AMD işlemcilerde dikkat etmeniz en önemli şey çekirdekler ve sanal çekirlerdir, diğer adı izlektir. Sanal çekirdek ve çekirdek ne kadar yüksek ise o kadar performansınız artar. AMD işlemcilerde diğer dikkat etmeniz nokta watt kısmıdır. Power supplay (güç kaynağı)nız eğer sisteminize tam yetmiyorsa sorunlar yaşayabilirsiniz. AMD serilerinde eski seriler de ne kadar iyi olsa da size tavsiyem ryzenx 3xxx serilerini almanızdır. Hem daha performanslı ve daha güçlü işlemcilerdir, tabii ki güncel olması da önemlidir. AMD işlemcilerinde kilit yoktur, en büyük avantajı budur. Eğer sisteminizin soğutması iyi ise rahatlıkla overclock yaparak bilgisayarınızın hızını arttırabilirsiniz.\r\n\r\n', 'AMD'),
(2, 'İntel İşlemci', 'İntel firmasını duymayanımız yoktur. Çok başarılı işlemciler üretmektedir fakat son zamanlarda AMD firması ürettikleri işlemciler ile performansta biraz daha öne geçmiştir. İntel serisinde bir işlemci alacaksanız dikkat etmeniz gereken ilk şey nesildir çünkü İntel firmasının eski nesil işlemcileri ne kadar performanslı da olsa yeni nesil bir işlemci almak her zaman daha iyi ve daha uzun ömürlüdür. Peki işlemci alırken neslini nasıl öğrenebilirim? Mesela i3-1125G4 başındaki ilk 2 sayısına bakarak anlayabiliriz, bu işlemci 11. nesildir. Eski nesil işlemcilerde de aynı, i7-4790 olan bir işlemci 4. nesil yani 2014 tarihinde üretilmiş demektedir. İntel işlemcilerde kilidi açık ve kilidi kapalı olmak üzere 2 tip işlemciler üretilmektedir. İşlemci serisinin sonunda K ibaresi var ise overclock yapabilirsiniz. Mesela i3-xxxxK ibaresi var ise overclock yapabilirsiniz demektedir. İlerleyen zamanlarda İntel firması bu harfi değiştirebilir, bu konuda da dikkat etmelisiniz. \r\n', 'INTEL'),
(3, 'Anakart Hakkında', 'Anakart alımına dikkat edilmesi en önemli özellik VRM(Voltage Regulator Module)\'dir. Ne kadar yüksek ise o kadar iyi soğutması ve overclock konusunda çok yardımcı olmaktadır. VRM\'den sonra işlemci soket yapısıdır, eğer sizde AMD bir işlemci var ise 1151 gibi soket alamazsınız, aynısı İntel içinde geçerlidir. Ram konusunda da dikkat etmeniz gerekmektedir, DDR3 bir anakarta DDR4  ram takamazsınız ama tercihen DDR4 anakart almanız daha iyi olur, daha güncel ve daha performanslıdır. Son zamanlarda m2 ssd\'ler de çok ön plana çıkmış durumda, anakartınızda m2 ssd giriş yapısı da önemlidir çünkü diğer sata3 ssdlere göre 2-3 kat daha hızlı ve performanslıdır. Ses konusunda ise eğer ki ses kayıt gibi işler yapacaksanız anakartın ses kartı yetmeyebilir fakat oyun veya normal iş için anakartlardaki ses kartı gayet yeterli olmaktadır. \r\n', 'ANAKART'),
(4, 'Ram Hakkında', 'Ramleri insanların metobolizması gibi düşünebiliriz. MHZ ne kadar fazlaysa o kadar hız ve işlevsellik demektir. Bunun yanında CL de önemlidir tabii, CL gecikme, tepki süresi diyebiliriz. CL ne kadar düşükse o kadar hızlı tepkime verir. Ram alırken dikkat etmeniz gereken anakartınız desteklemesidir. Anakartınız 3000mhz destekliyorsa siz 3600 mhz alamazsınız, tabii overclock yapılıyorsa alabiliyorsunuz, bunu aldığınız anakartın markasını yazarak öğrenebilirsiniz. Şuan ki işletim sistemi, oyunlar veya render işlemi için en az 8gb olması gerekmektedir. MHZ ve CL\'in yanında gb da önemlidir tabii ki. GB ne kadar yüksek ise o kadar fazla yükü üstlenebilirler.\r\n', 'RAM'),
(5, 'Ekran Kartı Hakkında', 'Ekran Kartı bilgisayarın en önemli parçalarından biridir tabii kullanım amacına göre değişmektedir. Ekran kartında en dikkat edilmesi gereken bit ve bellek hızıdır, gb da önemlidir tabii ama bit daha önemli, yükleneceği iş bite bakıyor, bit ne kadar yüksekse o kadar çok iş yüklenebilir diyebiliriz. Bellek hızı ise aynı ram gibidir ne kadar yüksekse o kadar hızlı görüntüyü aktarma işi yapar. En unutulmaması gereken şey ise soğutmadır, en az 2 fanlı ekran kartları tercih edilmelidir. Tek fan soğutma konusunda ortanın biraz altında kalıyor ama bütçe konusunda sorun yaşıyorsanız alınabilir. Bir de arka plak kısmı var, arka tarafta plak olması gerekiyor, arka taraftaki pinleri soğutmaya ve korumaya yarıyor ayrıca kartı destekliyor diyebiliriz, ön taraf ve arka tarafın ağırlığını  dengelemek amaçlıdır.\r\n', 'EKRANKARTİ'),
(6, 'SSD Hakkında', 'SSD\'ler artık vazgeçilmez bir hal almaya başladı. HDD\'den daha hızlı ve veri akışı konusunda da çok iyi iş yapmaktadır. SSD alırken en önemli şey okuma ve yazmadır. Genelde sata3\'lerin hızları m2 SSD\'lere göre daha yavaştır. Hepsi yavaş diyemeyiz ama m2 almanız daha iyi olur. Sata3 SSD\'ler 500 okuma /550 yazma oluyor, m2 SSD\'ler en düşük 1500 okuma en yüksek 10000 lere kadar çıkmaktadır. Bütçe konusunda tabii ki sorun oluyor fakat 2000 okuma 2200 yazma gündelik ve oyunlar için gayet yeterli oluyor. Marka konusunda ise araştırmadan almayınız, marka çok önemli oluyor bu konuda.\r\n', 'SSD'),
(7, 'Kasa Hakkında', 'Kasalar en önemli parçamızdır ama birçok insan bunu bilmiyor. Tüm ekipmanlarımızı soğutmasına, parçalarımızı korumasına yarayan en önemli parçamız. Kasaların genel olarak şekline ve içindeki RGB fanlarına bakıyoruz ama kasa bununla bitmiyor. İçindeki fanın rpm hızına bakmak gerekiyor, rpm hızı ne kadar yüksekse fanlarımız o kadar hızlı soğutacağını gösterir. Kasamızın ön tarafı mesh yapıda ya da ön tarafı cam olup köşelerinden hava akışlı olmalıdır. Önden alınan havayı arkaya rahat iletip içeride ki işlemcimizi ve ekran kartımızı soğutma konusunda iyi olması gerekiyor ve tabii ki toz filtreleri olması gerekiyor yoksa fanlarımız çok tozlanır. Bir diğer önemli yönü ise kablo saklama kanallarıdır, kimse istemez kasanın içerisinde kabloların gözükmesini, pis bir görüntü oluşuyormuş hissi veriyor ama soğutma konusunda da kötü etkiliyor.\r\n', 'KASA'),
(8, 'Power Hakkında', 'Tabii güç kaynağı en önemli şey, her bir parça önemlidir ama power olmadan bilgisayarı açamayız değil mi? Power supplay veya güç kaynağında en önemli şey sertifakasıdır yani 80+ bronze gibi şeyler yazar illa ki görmüşsünüzdür. Gold almak isterdik fakat bütçeyi aşıyor biraz ama ne gerek var ki? Bronze iyi bir marka aldıktan sonra sorun olmuyor. Sisteminizin harcıyacağı gücü hesaplamalısınız eğer powerdan gelen güç yetmezse sisteminize zarar verebilir. Bazı powerlar da sahte sertifikalar olabilir güvenilir markalardan almalısınız. \r\n', 'POWER');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pchata`
--

CREATE TABLE `pchata` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yazi` varchar(1500) COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `pchata`
--

INSERT INTO `pchata` (`id`, `baslik`, `yazi`, `kod`) VALUES
(1, 'Mavi Ekran', 'Bilgisayarda oluşan mavi ekran diğer adı ile blue screen hataları genel olarak yanlış sürücü yüklemelerden veya donanım sorunlarından dolayı ekranda oluşan mavi ekran problemidir. Mavi ekran sorunlarının çözümü genelde yanlış sürücüleri güncellemek veya arızalı donanım parçasını bulup değiştirmek veya tamir etmek olacaktır. Sürücü ve arızalı donanımın yanında raminizi de kontrol etmeniz gerekebilir, yanlış sürücü yüklemediğinizden eminseniz ramlerinizi kontrol etmeniz gerekir. Raminizi silgi ile silip tekrar takarsanız sorun düzelmiş olacaktır.\r\n', 'MAVIEKRAN'),
(2, 'DLL Hatası', 'DLL hatalarında hangi kütüphanenin eksik olduğuna dair size uyarı penceresi çıkmaktadır. Oradaki DLL dosyasını internet üzerinden aratıp bulabilirsiniz. Güvenilir bir siteden indirmeniz gerekmektedir, virüs indirebilirsiniz. \r\n\r\n', 'DLL'),
(3, 'Virüs Sorunu', 'Genelde yanlış sitelerden indirilen dosyalardan ötürü bulaşır. Trojen en yaygın virüslerdendir. Antivirüs programım var sorun olmaz demeyin, antivirüslerin bile görmedi virüsler olabiliyor. Antivirüs kullanımı bilgisayarınıza da çok yormaktadır. Eğer bilgisayarınızda virüs bulursa içiniz rahat etmesi için eset gibi dünyada bilindik firmaların uygulamalarını indirip virüsleri silebilirsiniz.\r\n', 'VIRUS');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pchiz`
--

CREATE TABLE `pchiz` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yazi` varchar(1500) COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `pchiz`
--

INSERT INTO `pchiz` (`id`, `baslik`, `yazi`, `kod`) VALUES
(1, 'Bilgisayar Hızlandırma', 'Bilgisayarınızın yavaş olduğunu düşünüyorsanız ve hızlandırmak istiyorsanız doğru yerdesiniz. Öncelikle bilgisayar sisteminizin çok eski ise pek hızlanmayabilir bilginiz olsun. Çünkü eski nesil işlemci, anakart, ram veya ekran kartı olması bilgisayarı hızlandırmanızı düşük seviye de tutabilir. Yeni çıkan sürümler ile artık eski bileşenleri ne yazık ki öldürdüklerini söylemeliyim. Benim görüşüm 2014 den önce olan bilgisayarları hızlandırmanız biraz zordur. \r\nHızlandırmak için ilk önceliğimiz ramleriniz, eğer ki 4gb dan aşağı bir ram belleğiniz bulunuyorsa onu arttırmamız gerekmektedir. Windows içerisinde oluşturulan birçok hızlandırma yöntemi var fakat ben donanım olarak nasıl hızlandırabileceğinizi anlatacağım. Ramlerim 4gb üstü diyorsanız HDD ler artık tarihe karışmak üzere, tabii hala kullanımı yaygın fakat artık SSD almamızı zorunlu hale getiriyorlar. Çıkan yeni bir windows sürümü veya herhangi bir uygulama hızlı ve rahat çalışması için SSD yi baz alarak üretiyorlar. HDD yerine SSD alınca tabii ki de onu atmayın, HDD kutuları var onu alıp yedeklerinizi aktarabildiğiniz bir taşınabilir Hard Disk\'e çevirebilirsiniz.\r\nHız farkını aşağıdaki görselden de görebilirisiniz.', 'HIZ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pconeri`
--

CREATE TABLE `pconeri` (
  `id` int(11) NOT NULL,
  `baslik` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `yazi` varchar(1500) COLLATE utf8_turkish_ci NOT NULL,
  `kod` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `pconeri`
--

INSERT INTO `pconeri` (`id`, `baslik`, `yazi`, `kod`) VALUES
(1, 'İşlemci Öneri', 'İntel İşlemci<br/>\r\nİntel işlemci de orta segment ve fiyat/performans olara i5 10400f öneriyorum. İntel hayranıysanız ve bütçeniz kısıtlı ise kesinlikle bu işlemciyi almalısınız. İşlemci 6 çekirdek olup 12 de sanal çekirdeği vardır. Oyun ve küçük çaplı renderlar için gayet güçlü bir işlemcidir kendisi.Temel frekansı 2,9 ghz olan işlemcimiz turboya çıkarıldığında ise 4.3 ghz ulaşıyor. Bu özellikler gayet yetirli olacaktır. <br/>\r\nOrtalama fiyatı ise 1200-1700 TL arasındadır.', 'ISLEMCI'),
(2, 'AMD İŞLEMCİ', 'AMD İşlemci <br/>\r\nAMD yi biraz fazla öveceğim ama gerçekten ürettikleri işlemciler artık çok güçlü ve çok daha performanslı. Önereceğimiz işlemci AMD ryzen5 3600x hep fiyatı ile hem de performansı ile birçok işlemciye taş çıkartacağından eminim. Çekirdeği 6 olup sanal çekirdeği 12dir. Diyeceksiniz ki intel ile aynı bir farkı yok fakat AMD işlemciler de çarpan kilidi açık yani overclock işlemini birçok işlemcisinde rahatlıkla yapabiliyorsunuz. Overclock yaparak yapacağı görevi 2 kat arttırabiliyorsunuz. Temel frekansı 3.8ghz olup turboya çıkarıldığında 4.4 ghz ye çıkmaktadır. <br/>\r\nOrtalam fiyatı ise 1500-2500 TL arasındadır.', 'AMD'),
(3, 'Anakart Öneri', 'İntel Anakart Önerisi <br/>\r\nİntel için önerebileceğim en iyi ve en fiyat performans anakart Asus prime Z490-P dir. Bütçeniz varsa prosunu da alabilirsiniz tabii. VRM i 11 fazdır. 11 faz olması sıcaklık konusunda ve overclock yaparken sorun yaşamayacağınız anlamına gelmektedir. 4 tane ram slotu olup, 2 tane de m2 ssd yuvası bulunmaktadır. 4600 mhz ye kadar ram desteklemektedir. <br/>\r\nOrtalama fiyatı 900-1200 TL arasındadır.', 'ANAKART'),
(4, 'AMD ANAKART', 'AMD Anakart Önerisi <br/>\r\nAMD için fiyat performans olarak Msi  b450 tomahawk max serisini öneririm. Ryzen5 üstü bir işlemciniz var ise B550 chipsetli anakartlara bakmanızı tavsiye ederim. Bu anakartımız VRM 6 fazdır, faz sayısı biraz düşük olsa da gayet güçlü bir anakarttır. Overclock konusunda da sorun yaratmıyor. 4 tane ram slotu, 1 tane m2 ssd yuvası bulunmaktadır. Ram slotları 4133mhz e kadar desteklemektedir. <br/>\r\nOrtalama fiyat 850-1050 TL arasındadır.', 'B550'),
(5, 'RAM Önerisi', 'G.Skill Ripjaws <br/>\r\nRam üreticilerinde önde gelen bir firmadır. Fiyat/performans bakımından en iyi ramleri üretmektedir. 8+8 şeklinde alınca pahalı gelebilir gözünüze ama 8 gb alıp sonradan da 8 gb alabilirsiniz. Şuan ki piyasa fiyatları ne kadar artmış olsa da çok başarılı ramlerdir. <br/>\r\nOrtalam fiyat 16gb 850-1000 Tl 8gb 350-500 Tl arasındadır.', 'RAM'),
(6, 'CORSAİR RAM', 'Corsair Vengeance <br/>\r\nRamlerde bir diğer başarılı firmamız corsair. Fiyat/performans bakımından vengeance ramlerini tercih edebilirsiniz. Gerçekten başarılı ramler üretmektediler. İsteğinize bağlı olarak RGB li ramlerde alabilirsiniz. Ortalama bir bilgisayar için 3000mhz 3200mhz ramler yeterli olacaktır. <br/>\r\nOrtalam fiyat 16gb 800-1000 TL 8gb 350-450 TL arasındadır.', 'CORSAIR'),
(7, 'Ekran Kartı Öneri', 'ASUS GeForce TUF GTX 1650 SUPER <br/>\r\nFiyat/Performans bakımından alabileceğiniz en iyi ürün diyebilirim. Hem güncel bir ekran kartı hem de güçlüdür. Birçok işinizi çok rahatlıkla görebilirsiniz. Son çıkan oyunlarda biraz zorlanabilir ama yarı yolda bırakmayacaktır. Ekran kartı 4gb olup 128 bit özellikleri var. Şuan fiyat konusunda çok sorun olsa da ilerleyen zamanda umarım düzelir. <br/>\r\nOrtalama fiyat 4.000 Tl - 8.000 Tl arasındadır.', 'EKRANKARTI'),
(9, 'RX5500XT', 'Asus Dual Radeon RX 5500 XT / XFX Marka da alınabilir <br/>\r\nAMD kısmında ise en iyi Fiyat/Performans ürün bu diyebiliriz. RX580 de var tabii ama şuan ki fiyatlar pek hoş karşılanacak kıvamda olmadığı için rx5500 almak daha mantıklı. Ekran kartı 4gb, 128 bit\'tir. Nvidia ekran kartına biraz daha performanslı bir ekran kartıdır. Eğer bir üst modelini alırsanız daha da performanslı olacaktır. Sizi yarı yolda bırakmayacak bir ekran kartıdır. Hem güncel hem de özellik konusunda sizi üzmez. <br/>\r\nOrtalama fiyat 4.0000 - 8.000 TL arasındadır.', '5500XT'),
(10, 'SSD Öneri', 'Kingston A2000 <br/>\r\nŞuan fiyat olarakta hız olarakta en iyi SSD\'dir kendisi. 2000 yazma 2200 okuma hızı vardır. Genel olarak bu bantta ki ssdleri 1000 yazma 1750 okuma yapıyorlar. Bu fiyat bandında ki rahatlıkla alabileceğiniz bir SSD\'dir. Anakartınızda M2 desteğiniz varsa alabirsiniz. <br/>\r\nOrtalama fiyat 450-600 TL arasındadır.', 'SSD'),
(11, 'SANDISK SSD', 'Sandisk SSD Plus SSD <br/>\r\nSamsung Evo markalı bir ssd almadığınız sürece sata3 olan ssdler ortalama 500 yazma 550 okuma olacaktır. Fiyat/Performans bandında en iyi ssdlerden biri. Usb markası olarakta bildiğimiz Sandisk marka, ssdleri hem uygun fiyat hem de performans olarak sizi üzmeyecektir. <br/>\r\nOrtalama fiyat 400-500 TL arasındadır.', 'SANDISK'),
(12, 'Kasa Öneri', 'MSİ MAG 100M <br/>\r\nTasarım olarak güzel bir kasa, iç hacmi 330mm dir. Kasanın kablo gizleme kanalları fazla var, rahatlıkla kabloları gizleyebilirsiniz. Tek güzel olmayan yanı ön tarafa toz filtresi koyulmaması, ön panel mesh panel olduğundan fanlar biraz daha fazla tozlanıyor fakat fiyat/performans bakımından çok iyi bir kasadır. Hava akışı ise ön taraftan çok rahat bir hava akışı sağlanmaktadır. <br/>\r\nOrtalama fiyat 400-550TL arasındadır.', 'KASA'),
(13, 'XPG KASA', 'XPG INVADER<br/>\r\nKasanın ön tarafı tamamen kapalı gözükse de yanlardan hava akışı sağlamaktadır. İsterseniz ön kapağı çıkarıp öyle de kullanabiliyorsunuz fakat görüntü açısından pek tercih etmezsiniz. Ön taraf mesh panel değil fakat toz filtresi olduğu ve yanlardan gerçekten çok güzel bir hava akışı sağlamış XPG firması. Kablo saklama kanallarını da gerçekten özenle yapılmış ve bu fiyatta alabileceğiniz en iyi kasalardan birisi. <br/>\r\nOrtalama fiyat 400-600 TL arasındadır.', 'XPG'),
(14, 'Power Öneri', 'Sharkoon SHP650 V2 <br/>\r\nFiyat olarak gayet uygun ve marka olarakta çok kaliteli bir markadır. FSP markasının yan markasıdır. Power kontrol ve sertifika veren firma FSP markasıdır ve çok güçlü ve sağlam güç kaynağı üretmektedirler. Güç kaynağımız 650w olup 80+ sertifikası vardır. Şuan için birçok sisteme güç vermekte sorun yaşatmamaktadır. 650w bir güç hemen hemen her sisteme yeterli gücü sağlamaktadır.<br/>\r\nOrtalama fiyat 350-550 TL arasındadır.', 'POWER'),
(15, 'COOLER MASTER POWER', 'COOLER MASTER WATT LİTE <br/>\r\nGüç kaynağı alırken daha bilindik bir marka almak istiyorsanız Cooler Master alabilirsiniz. Lite serisinde her wattta güç kaynağı bulunmaktadır. Sisteminizi desteleyecek bir watt seçerek gönül rahatlığıyla alabilirsiniz. Güç kaynağı alırken biraz yüksek watt seçmenizi tavsiye ederim, bir parçanızı güncellemek istediğinizde bir daha güç kaynağınızı değiştirmekle uğraşmazsınız hem de ilereye dönük bir sistem olmuş olur.<br/>\r\nOrtalama fiyat 500-600 TL arasındadır.', 'COOLER'),
(16, 'Laptop Öneri', 'MSI GF63 Thin <br/>\r\nLaptopta i5 10. nesil işlemci, 8gb ram, 250gb m2 ssd, GTX 1650 ekran kartı, 15.6 inch FHD ekranı bulunmaktadır. Soğutma konusunda da gayet başarılı bir laptop. Ağırlık ve batarya ömrü olarakta sizi üzmeyecektir. Bataryası kullanıma göre değişmektedir, oyun, çizim gibi işlerde biraz daha az sürmektedir. Ortalama batarya süresi 5 saattir. <br/>\r\nOrtalama fiyat 7.000 - 9.000 TL arasındadır.', 'MSI'),
(17, 'LENOVO LAPTOP', 'LENOVO IdeaPad 3 <br/>\r\nGündelik kullanım için ideal bir laptoptur. Bazı oyunlarda da güzel performans vermektedir. Güncel ve grafik konusunda yüksek olan oyunlarda zorlanabilir. Athlon 3050U işlemci, 4gb ram, 256gb ssd bulunmaktadır. Genel olarak iş ve okul için kullanım sağlanmaktadır. Oyunlarda biraz sizi üzebilir fakat gündelik kullanım için ideal bir laptoptur.<br/>\r\nOrtalam fiyat 2.500 - 3500 TL arasındadır.', 'LENOVO'),
(18, 'Ekipman Öneri', 'Hyperx Cloud 2 <br/>\r\nKulaklıkta en dikkat ettiğimiz şey mikrofon ve rahatlık. Hyperx cloud 2 de bunun hepini karşılıyor, hem rahat hem de mikrofonu gerçekten çok kaliteli. Yayınlarda bile kullanılmaktadır. Tam Fiyat/Performans ürünü diyebiliriz. 300 TL civarında markasız bir kulaklığa vermektense 500 Tl civarında bu kulaklığı alıp uzun süre kullanabilirsiniz.<br/>\r\nOrtalama Fiyat 500 - 700 TL arasındadır.', 'KULAKLIK'),
(19, 'CORSAİR K55', 'Corsair K55 Yarı Mekanik Klavye<br/>\r\nKlavye rahatlık ve konfor çok önemlidir. Corsair bu klavye de RGB ye kadar önem göstermiştir. Klavyenin kendi yazılımında istediğiniz şekilde renklerini ayarlayabiliyorsunuz ve makro tuşları da var. Oyunlarda veya herhangi bir programda rahatlıkla tuş atayıp kısayol tuşu olarak kullanabilirsiniz.<br/>\r\nOrtalama fiyat 250-500 Tl arasındadır.', 'KLAVYE'),
(20, 'LOGITECH G102', 'Logitech G102 <br/>\r\nFiyat ve performans olarak çok uygun bir mouse. Hem şık hem de rahatlık konusunda güzel bir mouse. Eğer eliniz büyükse tabii ki sorun olabilir size. Eliniz büyük ise Steelseries rival serisine bakmanızı tavsiye ederim. Logitechin kendi yazılımından RGB ayarlaması ve makro tuşu ayarlayabilirsiniz. Oyunlarda veya programlarda size uzak gelen tuşu mousenin üzerindeki tuşa atayarak rahatlıkla işlem yapabilirsiniz.<br/>\r\nOrtalama fiyat 100-250 TL arasındadır.', 'G102');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `destek`
--
ALTER TABLE `destek`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pcbilgi`
--
ALTER TABLE `pcbilgi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pchata`
--
ALTER TABLE `pchata`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pchiz`
--
ALTER TABLE `pchiz`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pconeri`
--
ALTER TABLE `pconeri`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `destek`
--
ALTER TABLE `destek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `pcbilgi`
--
ALTER TABLE `pcbilgi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `pchata`
--
ALTER TABLE `pchata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `pchiz`
--
ALTER TABLE `pchiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `pconeri`
--
ALTER TABLE `pconeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
