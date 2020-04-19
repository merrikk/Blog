<?php 

include "header.php";
require_once("islem.php");





 ?>

<link rel="stylesheet" href=".css">
		<div class="container-fluid pt70 pb70">
			<div id="fh5co-projects-feed" class="fh5co-projects-feed clearfix masonry">
				

		
                <?php 


                 $veri1=$db ->prepare("select * from makale where makale_id=?;");
                 $veri1-> execute(array("3"));
                 $islemm= $veri1->fetch();
                 

                 ?>



                 <?php 


                 $veri2=$db ->prepare("select * from makale where makale_id=?;");
                 $veri2-> execute(array("6"));
                 $islem2= $veri2->fetch();
                 

                 ?>




                  <?php 


                 $veri3=$db ->prepare("select * from makale where makale_id=?;");
                 $veri3-> execute(array("7"));
                 $islem3= $veri3->fetch();
                 

                 ?>



				<div class="fh5co-project masonry-brick">
					<a href="single.php">
						<img src="images/krdlk.jpg">
						<h2><?php echo $islemm["makalebasligi"]; ?></h2>

                     

					</a>
				</div>
				<div class="fh5co-project masonry-brick">
					<a href="single2.php">
						<img src="images/evdn.jpg">
						<h2><?php echo $islem2["makalebasligi"]; ?></h2>

                     

					</a>
				</div>

				<div class="fh5co-project masonry-brick">
					<a href="single3.php">
						<img class="foto" src="images/yüz.jpeg">
						<h2><?php echo $islem3["makalebasligi"]; ?></h2>

                     

					</a>
				</div>
					
					
			</div>
			<!--END .fh5co-projects-feed-->
		</div>
	

		
<?php 

include "footer.php";

 ?>