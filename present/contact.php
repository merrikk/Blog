<?php include "header.php" ?>

<div class="page-content">
			<h1>Yorum Yapın</h1>
			
			<!--//<p class="text-center"><img src="images/person.jpg" alt="Free HTML5 by FreeHTML5.co"></p>-->
			<div class="container">
  <form action="veriekle.php" method="post">

    <label for="lname">İsim Soyisim</label>&nbsp;
    <input type="text" id="lname" name="adsoyad" ><br>

    <label for="lname">Eposta</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" id="lname" name="mail" ><br>
    

    <label for="subject">Yorumunuz</label>&nbsp;&nbsp;&nbsp;&nbsp;
    <textarea id="subject" name="yorumicerik" style="height:200px"></textarea>
<br>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Gönder">
  </form>
</div>
		</div>
<?php include "footer.php" ?>