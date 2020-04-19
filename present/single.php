<?php include "header.php";
require_once("islem.php");



 $veri=$db ->prepare("select * from makale where makale_id=?;");
 $veri-> execute(array("3"));
 $islemm= $veri->fetch();
                 
?>

 




<div class="page-content">
			<h1 class="mb0"><?php echo $islemm["makalebasligi"]; ?></h1>
			<div class="meta"><span></span></div>
			<p><?php echo $islemm["makaleiçerigi"];?> </p>
			<p><img src="images/originals/karadelik.jpg" alt="Free HTML5 by FreeHTML5.co"></p>
			
			
		</div>

<?php include "footer.php" ?>