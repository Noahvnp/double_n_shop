<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
?>
<div class="container-fluid bg-light">
	<h3 class="text-center color-primary mt-5">Sản phẩm nổi bật</h3>
	<div class="row mx-4 px-4">
		<?php
			$product_feathered = $product->getproduct_feathered();
			if($product_feathered){
				while($result = $product_feathered->fetch_assoc()){

		?>
			<div class="col-lg-3 col-sm-6 mb-3">
				<div class="product-card">
					<div class="d-flex align-items-start align-items-center space-between flex-column border rounded border-dark bg-white p-4" style="height: 440px;">
						<a href="details.php?proid=<?php echo $result['productId'] ?>" class="image-box mb-auto"><img src="admin/uploads/<?php echo $result['image'] ?>" width="150px" alt="" /></a>
						<h5><?php echo $fm->textShorten($result['productName'], 50) ?></h5>
						<p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
						<p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
						<div class="button"><span>
							<a href="details.php?proid=<?php echo $result['productId'] ?>"
							class="bg-dark border rounded border-primary p-2">Chi tiết</a></span>
						</div>
					</div>
				</div>
			</div>	
			<?php
				}
			}
			?>
	</div>
	
	<h3 class="text-center color-primary mt-5">Sản phẩm mới</h3>
	<div class="row mx-4 px-4">
			<?php
			$product_new = $product->getproduct_new();
			if($product_new){
				while($result_new = $product_new->fetch_assoc()){

			?>
			<div class="col-lg-3 col-sm-6 mb-3">
				<div class="product-card">
					<div class="d-flex align-items-start align-items-center space-between flex-column border rounded border-dark bg-white p-4"  style="height: 440px;">
						<a href="details.php?proid=<?php echo $result_new['productId'] ?>" class="image-box mb-auto"><img src="admin/uploads/<?php echo $result_new['image'] ?>" width="150px" alt="" /></a>
						<h5><?php echo $fm->textShorten($result_new['productName'], 50) ?></h5>
						<p><?php echo $fm->textShorten($result_new['product_desc'], 50) ?></p>
						<p><span class="price"><?php echo $fm->format_currency($result_new['price'])." "."VNĐ" ?></span></p>
						<div class="button"><span>
							<a href="details.php?proid=<?php echo $result_new['productId'] ?>"
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
 
<?php 
	include 'inc/footer.php';
	
 ?>
