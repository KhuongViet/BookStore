<?php include 'inc/header.php';?>

<div class="main">
    <div class="content">
        <div class="content_top">
            <div class="heading">
                <h3>Tác Phẩm Kinh Điển</h3>
            </div>
            <div class="clear"></div>
        </div>

        <div class="section group" style="overflow-x: scroll; display: inline-flex;  width: 100% ">

            <?php
            $getTop1 = $pd->getTopbrandcream();
            if ($getTop1) {
                while ($result = $getTop1->fetch_assoc()) {
            ?>

                <div class="grid_1_of_4 images_1_of_4">
                    <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
                    <h2><?php echo $result['productName']; ?></h2>
                    <p><?php echo $fm->textShorten($result['body'], 60); ?></p>
                    <p><span class="price"><?php echo $result['price']; ?> VNĐ</span></p>
                    <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Chi tiết</a></span></div>
                </div>
            <?php } } ?>

        </div>
        <div class="content_top">
            <div class="heading">
                <h3>Sách Tiếng Anh</h3>
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group" style="overflow-x: scroll; display: inline-flex; width: 100%">

            <?php
            $getTop4 = $pd->getTopbrandbread();
            if ($getTop4) {
                while ($result = $getTop4->fetch_assoc()) {
            ?>
                    <div class="grid_1_of_4 images_1_of_4"  style="	flex: 1000; width: 250px flex: 1 1 auto; text-wrap: wrap; /* Sử dụng flex linh hoạt */
  min-width: 250px; /* Đảm bảo mỗi ô có đủ không gian */
  flex-shrink: 0; /* Ngăn chặn co lại quá mức */
  margin-right: 5px;">
                        <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
                        <h2><?php echo $result['productName']; ?></h2>
                        <p><?php echo $fm->textShorten($result['body'], 60); ?></p>
                        <p><span class="price"><?php echo $result['price']; ?> VNĐ</span></p>
                        <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Chi tiết</a></span></div>
                    </div>
            <?php } } ?>
            
        </div>
        <div class="content_bottom">
            <div class="heading">
                <h3>Sách Tiếng Việt</h3>
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group" style="overflow-x: scroll; display: inline-flex; width: 100%" >
            <?php
            $getTop3 = $pd->getTopbrandsweet();
            if ($getTop3) {
                while ($result = $getTop3->fetch_assoc()) {
            ?>
                <div class="grid_1_of_4 images_1_of_4"  style="	flex: 1000; width: 250px flex: 1 1 auto; /* Sử dụng flex linh hoạt */
  min-width: 250px; /* Đảm bảo mỗi ô có đủ không gian */
  flex-shrink: 0; /* Ngăn chặn co lại quá mức */
  margin-right: 5px;">
                    <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
                    <h2><?php echo $result['productName']; ?></h2>
                    <p><?php echo $fm->textShorten($result['body'], 60); ?></p>
                    <p><span class="price"><?php echo $result['price']; ?> VNĐ</span></p>
                    <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Chi tiết</a></span></div>
                </div>
            <?php } } ?>

        </div>
        <!-- <div class="content_bottom">
            <div class="heading">
                
            </div>
            <div class="clear"></div>
        </div>
        <div class="section group">
            <?php
            $getTop2 = $pd->getTopbrandSeasonalCakes();
            if ($getTop2) {
                while ($result = $getTop2->fetch_assoc()) {
            ?>
                <div class="grid_1_of_4 images_1_of_4">
                    <a href="details.php?proid=<?php echo $result['productId']; ?>"><img src="admin/<?php echo $result['image']; ?>" alt="" /></a>
                    <h2><?php echo $result['productName']; ?></h2>
                    <p><?php echo $fm->textShorten($result['body'], 60); ?></p>
                    <p><span class="price"><?php echo $result['price']; ?> VNĐ</span></p>
                    <div class="button"><span><a href="details.php?proid=<?php echo $result['productId']; ?>" class="details">Chi tiết</a></span></div>
                </div> -->
            <?php } } ?>
            

        </div>
    </div>
</div>
<?php include 'inc/footer.php';?>
