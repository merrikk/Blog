
<?php  

try{


	$db=new PDO("mysql:host=localhost;dbname=blog;charset=utf8;","root","");
}
catch(PDOException $hata)
{
	echo $hata -> getMessage();
}

$yazar=$_POST['adsoyad'];
$mail=$_POST['mail'];
$yorumicerik=$_POST['yorumicerik'];
$ekle=$db->prepare("INSERT INTO yorumlar SET yorum_yazar=?,yorum_mail=?,yorumicerigi=?");
$ekle->execute([$yazar,$mail,$yorumicerik]);

if ($ekle) {
	 header("Location: index.php");
}
else{
	echo "bir hata oluştu";
}

?>