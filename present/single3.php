<?php include "header.php";
require_once("islem.php");



 $veri3=$db ->prepare("select * from makale where makale_id=?;");
 $veri3-> execute(array("7"));
 $islem3= $veri3->fetch();
                 
?>

 




<div class="page-content">
			<h1 class="mb0"><?php echo $islem3["makalebasligi"]; ?></h1>
			<div class="meta"><span></span></div>
			<p><?php echo $islem3["makaleiçerigi"];?> </p>
			<p><img src="images/originals/yüz.jpeg" alt="Free HTML5 by FreeHTML5.co"></p>
			
			
		</div>

<?php include "footer.php" ?>