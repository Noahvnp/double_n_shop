<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
 <div class="container-fluid">
	<!-- Apple -->
	<h3 class="text-center color-primary mt-5">Apple</h3>
    <div class="row mx-4 px-4">
				<?php
	      		$Apple = $product->getLastestApple();
	      		if($Apple){
	      			while($result_Apple = $Apple->fetch_assoc()){
	      		?>
				<div class="col-lg-3 col-sm-6 mb-3">
					<div class="product-card">
						<div class="d-flex align-items-start align-items-center space-between flex-column border rounded border-dark bg-white p-4"  style="height: 440px;">
							<a href="details.php?proid=<?php echo $result_Apple['productId'] ?>" class="image-box mb-auto"><img src="admin/uploads/<?php echo $result_Apple['image'] ?>" width="150px" alt="" /></a>
							<h5><?php echo $fm->textShorten($result_Apple['productName'], 50) ?></h5>
							<p><?php echo $fm->textShorten($result_Apple['product_desc'], 50) ?></p>
							<p><span class="price"><?php echo $fm->format_currency($result_Apple['price'])." "."VNĐ" ?></span></p>
							<div class="button"><span>
								<a href="details.php?proid=<?php echo $result_Apple['productId'] ?>"
								class="align-self-end bg-dark border rounded border-primary p-2">Chi tiết</a></span>
							</div>
						</div>
					</div>
				</div>
				<?php
				}
			}
				?>
			</div>
    </div>

	<!-- Samsung -->
	<h3 class="text-center color-primary mt-5">Samsung</h3>
    <div class="row mx-4 px-4">
				<?php
	      		$Samsung = $product->getLastestSamsung();
	      		if($Samsung){
	      			while($result_Samsung = $Samsung->fetch_assoc()){
	      		?>
				<div class="col-lg-3 col-sm-6 mb-3">
					<div class="product-card">
						<div class="d-flex align-items-start align-items-center space-between flex-column border rounded border-dark bg-white p-4"  style="height: 440px;">
							<a href="details.php?proid=<?php echo $result_Samsung['productId'] ?>" class="image-box mb-auto"><img src="admin/uploads/<?php echo $result_Samsung['image'] ?>" width="150px" alt="" /></a>
							<h5><?php echo $fm->textShorten($result_Samsung['productName'], 50) ?></h5>
							<p><?php echo $fm->textShorten($result_Samsung['product_desc'], 50) ?></p>
							<p><span class="price"><?php echo $fm->format_currency($result_Samsung['price'])." "."VNĐ" ?></span></p>
							<div class="button"><span>
								<a href="details.php?proid=<?php echo $result_Samsung['productId'] ?>"
								class="align-self-end bg-dark border rounded border-primary p-2">Chi tiết</a></span>
							</div>
						</div>
					</div>
				</div>
				<?php
				}
			}
				?>
			</div>
    </div>

	<!-- Oppo -->
	<h3 class="text-center color-primary mt-5">Oppo</h3>
    <div class="row mx-4 px-4">
				<?php
	      		$Oppo = $product->getLastestOppo();
	      		if($Oppo){
	      			while($result_Oppo = $Oppo->fetch_assoc()){
	      		?>
				<div class="col-lg-3 col-sm-6 mb-3">
					<div class="product-card">
						<div class="d-flex align-items-start align-items-center space-between flex-column border rounded border-dark bg-white p-4"  style="height: 440px;">
							<a href="details.php?proid=<?php echo $result_Oppo['productId'] ?>" class="image-box mb-auto"><img src="admin/uploads/<?php echo $result_Oppo['image'] ?>" width="150px" alt="" /></a>
							<h5><?php echo $fm->textShorten($result_Oppo['productName'], 50) ?></h5>
							<p><?php echo $fm->textShorten($result_Oppo['product_desc'], 50) ?></p>
							<p><span class="price"><?php echo $fm->format_currency($result_Oppo['price'])." "."VNĐ" ?></span></p>
							<div class="button"><span>
								<a href="details.php?proid=<?php echo $result_Oppo['productId'] ?>"
								class="align-self-end bg-dark border rounded border-primary p-2">Chi tiết</a></span>
							</div>
						</div>
					</div>
				</div>
				<?php
				}
			}
				?>
			</div>
    </div>
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>
