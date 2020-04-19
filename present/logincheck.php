
<?php  

session_start();
try{



	$db=new PDO("mysql:host=localhost;dbname=blog;charset=utf8;","root","");
}
catch(PDOException $hata)
{
	echo $hata -> getMessage();
}

$k_adi=$_POST['kullaniciadi'];
$sifre=$_POST['sifre'];
$user=$db->query("SELECT * FROM kullanıcı WHERE kadi='$k_adi'AND k_sifre ='$sifre' ")->fetch();


if ($user) {
	 $_SESSION['user']=$user;
	 header("location:index.php");
	}
else{
	echo "bilgiler hatalı";
}

?>