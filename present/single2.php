<?php include "header.php";
require_once("islem.php");



 $veri2=$db ->prepare("select * from makale where makale_id=?;");
 $veri2-> execute(array("6"));
 $islem2= $veri2->fetch();
                 
?>

 




<div class="page-content">
			<h1 class="mb0"><?php echo $islem2["makalebasligi"]; ?></h1>
			<div class="meta"><span></span></div>
			<p><?php echo $islem2["makaleiçerigi"];?> </p>
			<p><img src="images/originals/evdn.jpg" alt="Free HTML5 by FreeHTML5.co"></p>
			
			
		</div>

		<?php 

           include "footer.php";

		 ?>

