-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Nis 2020, 15:28:37
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanıcı`
--

CREATE TABLE `kullanıcı` (
  `k_id` int(11) NOT NULL,
  `k_adı` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `k_soyadi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `kadi` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `k_sifre` int(100) NOT NULL,
  `k_telefonno` int(11) NOT NULL,
  `k_mail` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `k_yetki` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanıcı`
--

INSERT INTO `kullanıcı` (`k_id`, `k_adı`, `k_soyadi`, `kadi`, `k_sifre`, `k_telefonno`, `k_mail`, `k_yetki`) VALUES
(0, 'meric', 'yarıkkaya', 'merik', 123123, 2265597, 'orky@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `makale_id` int(11) NOT NULL,
  `makalebasligi` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `makale_yazar` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL,
  `makale_tarihi` date NOT NULL,
  `makaleiçerigi` varchar(5000) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`makale_id`, `makalebasligi`, `makale_yazar`, `makale_tarihi`, `makaleiçerigi`) VALUES
(3, 'GALAKSİMİZİN MERKEZİNDEKİ KARA DELİĞİN ETRAFINDA DANS EDEN BİR YILDIZ BULUNDU', 'Barış özcan', '2020-04-17', 'Geceleri gökyüzüne baktığımızda kaç yıldız görürüz? Genelde kentlerde yani ışık kirliliğinin yüksek olduğu yerlerde yaşadığımız için havanın en açık olduğu bir  gecede bile en fazla 2500 tane. Dünyanın en karanlık noktalarından birine gittiğinizi düşünün şimdi, örneğin Şili’deki Atacama Çölü’ne. Oradan baktığınızda bile 9000’den fazla yıldızı göremezsiniz. Gündüzleri zaten saymıyorum çünkü güneş o kadar parlak ki ondan başka yıldız göremiyoruz. \r\n\r\nGeceleri çıplak gözle görebildiğimiz o binlerce yıldızın tamamı dünyanın ve güneşin de içinde bulunduğu yüz milyarlarca yıldızdan oluşan samanyolu galaksisinin bir parçası. Galaksimizde en az 100 ila 400 milyar arasında yıldız olduğu tahmin ediliyor. Ve bu yıldızlar da bir merkezin etrafında dönüyor, buna galaksi merkezi adı veriliyor. \r\n\r\n\r\n \r\nNasıl güneş sisteminde Dünya ve diğer gezegenler, Mars, Venüs, Merkür güneşin etrafında dönüyorlarsa, Güneşin de dahil olduğu tüm bu diğer yüz milyarlarca yıldız da bir merkezin etrafında dönüyor. Peki galaksinin o merkezinde ne var? Çok büyük bir güneş mi? Yaklaştınız…\r\n\r\nTeknik olarak ifade edecek olursak o bölgede çok parlak ve çok yoğun bir astronomik radyo kaynağı var: Sagittarius A* (Sagittarius A-yıldız). Bizden sadece 26000 ışık yılı uzaklıkta olan bu bölge uzun bir süredir gök bilimcileri tarafından inceleniyor. Oradaki yıldızların hareketleri gözlemleniyor ve o yıldızlardan özellikle biri var ki -S2 yıldızı- yörüngesi 27 yıldır takip ediliyor. Bu gözlemlerin sonucunda galaksinin merkezinde dev bir güneş değil ama bizim güneşimiz gibi 4 milyon tanesinin kütlesine sahip dev bir kara delik olduğu sonucuna varıldı. 2018 yılında bu sonuca ulaşan Almanya’daki Max Planck Enstitüsü’nde çalışan araştırmacılar S2 yıldızının hareketlerini izlemeye devam ettiler ve dün en az 2 yıl önceki kadar önemli bir başka sonuca ulaştılar ve 16 Nisan 2020 tarihli yeni bir makalede bulgularını yayımladılar. '),
(6, 'EVDEN ÖĞRENME VE ÇALIŞMAYI KOLAYLAŞTIRAN 18 UYGULAMA', 'Barış Özcan', '2020-04-17', 'Evden çalışmayı ve evden öğrenmeyi mecburen öğrendiğimiz günlerdeyiz. Bu mecburiyete iyi yönünden bakarsak bu dönemde çok güzel yeni şeyler keşfedebiliriz. Sizlere daha önce çeşitli filmler ve web siteleri önerdiğim videolar hazırlamıştım. Bu videoda da işinizi kolaylaştıracak mobil uygulamalar önereceğim. \r\n\r\nSosyal olanlarından başlayalım. Yeri gelmişken “sosyal mesafe” ifadesini fiziksel mesafeye dönüştürmek lazım çünkü bizler sosyal canlılarız. Evden çalışırken, evden öğrenirken de sosyalleşmemizi kolaylaştıracak olan uygulamalar en popüler olanları.\r\n\r\n\r\n \r\nUzaktan eğitim ve toplantılar için tercih edilen Zoom uygulaması daha 1 ay önce 10 milyon kişi tarafından kullanılırken izole günler başladıktan sonra bu sayı 200 milyon kişiye çıktı. Bizim evde de ilkokula giden oğlum kendi sınıfıyla bu uygulamayı kullanarak ders yapıyor. Kullanımı oldukça pratik ve belli bir süreye kadar da ücretsiz olduğu için hızla yaygınlaşıyor. Fakat bir uyarı yapayım, son dönemde bazı güvenlik açıkları bulundu ve SpaceX gibi toplantılarında bu uygulamayı kullanan bazı şirketler tarafından yasaklandı. \r\n\r\nO yüzden size bir alternatif daha önereceğim: Whereby. İnternet güvenliği ve mahremiyet gibi konularda başka bölgelere göre daha duyarlı olan Avrupa kökenli Norveç merkezli bir uygulama. Size sanal bir oda oluşturuyor.  Dolayısıyla sadece bu odanın linkini paylaşmanız yeterli. Gönderdiğiniz kişi linke tıklayıp kapınızı çalıyor. İçeri alırsanız sizinle sınırsız olarak görüntülü görüşme yapabiliyor. Bu odanızda aynı anda ücretsiz ve sınırsız olarak 4 kişiyi ağırlayabiliyorsunuz. Ücretli versiyonlarında başka odalar, sınıflar açıp 50 kişiye kadar toplanabiliyorsunuz.\r\n\r\n\r\n \r\nAmacınız toplantı ya da ders yapmak değil de sadece başka biriyle görüşmekse Google Duo uygulamasını tavsiye ederim. Son dönemde giderek yaygınlaşan platform bağımsız bir görüşme yöntemi bu. Benim kullandığım Galaxy S20’lerde telefon uygulamasıyla entegre çalışıyor. Telefon rehberinde Duo yüklü olan kişileri doğrudan arayabiliyorsunuz. Bu uygulamanın görüntü ve ses kalitesi de oldukça tatmin edici. Eskiden WhatsApp kullanarak aradığım aile ve arkadaşlarımı artık bu uygulamayla arayıp görüşüyorum.'),
(7, 'NEDEN YÜZÜMÜZE DOKUNMADAN DURAMIYORUZ?', 'Barış Özcan', '2020-04-15', 'Dünya Sağlık Örgütü, virüsten korunmanın en etkili üç şeklini ısrarla vurguluyor:\r\n\r\nEvinde kal\r\nEllerini yıka\r\nYüzüne dokunma\r\nÇok da zor görünmüyor değil mi? Peki neden yapamıyoruz? Neden evimizde kalamıyoruz? Ellerimizi 20 saniyeden uzun süre yıkayamıyoruz? Daha da önemlisi, neden kafamıza, yüzümüze dokunmadan duramıyoruz?\r\n\r\nBelki de bu iş söylendiği kadar basit değildir. \r\n\r\n \r\n\r\nMichael Ryan: Odadakilere bakıyordum da son 20 dakika içerisinde kaç kişinin eliyle yüzüne dokunduğunu sayamadım…\r\n \r\n\r\nBunu söyleyen Dünya Sağlık Örgütü Acil Sağlık Hizmetlerinin başındaki kişiydi. Söyledikleriyle yaptıkları tutmayan tek yetkili kendisi değil.\r\n\r\nYetkilileri bırakın, bu konunun eğitimini alan tıp öğrencileri üzerinde yapılan küçük çaplı bir araştırma var. 26 öğrencinin tamamı, dersi dinlerken saatte ortalama 23 kez yüzüne dokunmuş. 2,5 dakikada bir ağzımıza, yanağımıza, çenemize, burnumuza, gözümüze, kafamızın muhtelif yerlerine dokunuyoruz.\r\n\r\n\r\n \r\nHem de daha doğmadan dokunmaya başlıyoruz. 24 ila 36 haftalık hamileler üzerinde yapılan bir araştırmada, anne karnındaki bebeklerin bile yüzlerine dokunduğu gözlemlenmiş. Anneleri stresliyse bebekler de genellikle sol elleriyle yüzlerine dokunuyormuş. Benzer başka bir araştırmada sigara içen annelerin bebeklerinin yüzüne daha çok dokunduğu kaydedilmiş. \r\n\r\nBelli ki duygularla yüzümüze dokunma arasında bir ilişki var. Almanya’da yapılan başka bir araştırmada test çözen gençlerin elektriksel beyin aktiviteleri analiz edilmiş. Gençler testi çözerken onları rahatsız etmek için hoparlörlerden belli belirsiz sesler yayınlamışlar. Yani onların stresini arttırmışlar. Stres arttıkça deneklerin yüzlerine daha çok dokunduğu tespit edilmiş. Sonuç olarak yüze dokunmanın duyguları regüle ettiği iddiasında bulunmuşlar.\r\n\r\n\r\n \r\nYüzüne dokunma isteği sadece insanlara has bir davranış şekli değil. Kedilerde, köpeklerde, hatta sincaplarda bile var. Sincaplar ön pençelerini kullanarak yüzlerine dokunuyorlar. Tıpkı kediler gibi. Şimdi diyeceksiniz ki kediler yüzlerine stresten dokunmuyor, yüzlerini yıkamak için böyle bir hareket yapıyor. 1970’lerde sincaplar üzerinde yapılan bir araştırma, bu elle yüz yıkama işinin kokuyla alakalı bir davranış şekli olabileceğini iddia ediyor.\r\n\r\nBu da bizi yüzümüze dokunma isteğimizle kokular arasında bir ilişki olup olamayacağı sorusunu sordurtuyor. Hani videonun başında demiştim ya: evinde kal, ellerini yıka, yüzüne dokunma diye. Söylemesi kolay, yapması zor bu üç davranış tümüyle birbirinden kopuk olmayabilir mi acaba? Bunları birbirine koku alma ihtiyacımız bağlıyor olabilir mi? \r\n\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `yorum_yazar` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `yorum_mail` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `yorumicerigi` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL,
  `onaydurumu` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `yorum_yazar`, `yorum_mail`, `yorumicerigi`, `onaydurumu`) VALUES
(1, 'meriç yarıkkaya', 'blabla@gmail.com', 'mükemmel bir site', NULL),
(2, 'meriç yarıkkaya', 'blabla@gmail.com', 'mükemmel bir site', NULL),
(3, 'eray lapaci', '123q123q@gmail.com', 'manyak bi site olmuş yapanın ellerine sağlık', NULL),
(4, 'cem celal altınay', 'cem@gmial.com', 'çok güzel olmuş', NULL),
(5, 'ege', 'ege@gmial.com', 'çok güzel olmuş', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanıcı`
--
ALTER TABLE `kullanıcı`
  ADD PRIMARY KEY (`k_id`);

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`makale_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `makale`
--
ALTER TABLE `makale`
  MODIFY `makale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
