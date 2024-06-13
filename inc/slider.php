<style>
    .listview_1_of_2 {
        display: flex;
        align-items: center;
    }
    .listimg {
        display: inline-block;
    }
    .text {
        display: inline-block;
        margin-left: 10px; /* Điều chỉnh khoảng cách nếu cần */
    }
    .button {
		font-size: 13px;
		text-wrap: nowrap;
        display: inline-block;
        margin-left: 10px; /* Điều chỉnh khoảng cách nếu cần */
    }
</style>
	<div class="header_bottom">
		<div class="header_bottom_left">
			<div class="section group">
				<?php 
				$getAcer = $pd->latestFromCream();

				if ($getAcer) {
					while ($result = $getAcer->fetch_assoc()) {
				
				 ?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Tác Phẩm Kinh Điển</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Thêm vào giỏ hàng</a></span></div>
				   </div>
			   </div>

			   <?php }} ?>

			   <?php 
				$getCanon = $pd->latestFromSweet();

				if ($getCanon) {
					while ($result = $getCanon->fetch_assoc()) {
				
				 ?>			
				
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Sách Tiếng Việt</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Thêm vào giỏ hàng</a></span></div>
				   </div>
			   </div>
				<?php }} ?>
			</div>
			<div class="section group">

				  <?php 
				$getIphone = $pd->latestFromBread();

				if ($getIphone) {
					while ($result = $getIphone->fetch_assoc()) {
				
				 ?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>English Books</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Thêm vào giỏ hàng</a></span></div>
				   </div>
			   </div>

			   <?php }} ?>	

			     <?php 
				$getSamsung = $pd->latestFromSeasonalCakes();

				if ($getSamsung) {
					while ($result = $getSamsung->fetch_assoc()) {
				
				 ?>		
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $result['productId']; ?>"> <img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Bánh theo mùa</h2>
						<p><?php echo $result['productName']; ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>">Thêm vào giỏ hàng</a></span></div>
				   </div>
			   </div>

				 <?php }} ?>	
			</div>
		  <div class="clear"></div>
		</div>
			 <div class="header_bottom_right_images">
		   <!-- FlexSlider -->
             
			<section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<li><img src="images/slider1.jpg" alt=""/></li>
						<li><img src="images/slider2.jpg" alt=""/></li>
						<li><img src="images/slider3.jpg" alt=""/></li>
						<li><img src="images/slider4.jpg" alt=""/></li>
				    </ul>
				  </div>
	      </section>
<!-- FlexSlider -->
	    </div>
	  <div class="clear"></div>
  </div>	
