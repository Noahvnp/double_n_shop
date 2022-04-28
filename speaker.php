<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
 <div class="container-fluid">
	<h3 class="text-center color-primary mt-5">Loa</h3>
    <<div class="row mx-4 px-4">
				<?php
	      		$speaker = $product->getSpeaker();
	      		if($speaker){
	      			while($result_speaker = $speaker->fetch_assoc()){
	      		?>
				<div class="col-lg-3 col-sm-6 mb-3">
					<div class="product-card">
						<div class="d-flex align-items-start align-items-center space-between flex-column border rounded border-dark bg-white p-4"  style="height: 440px;">
							<a href="details.php" class="image-box mb-auto"><img src="admin/uploads/<?php echo $result_speaker['image'] ?>" width="150px" alt="" /></a>
							<h5><?php echo $fm->textShorten($result_speaker['productName'], 50) ?></h5>
							<p><?php echo $fm->textShorten($result_speaker['product_desc'], 50) ?></p>
							<p><span class="price"><?php echo $fm->format_currency($result_speaker['price'])." "."VNĐ" ?></span></p>
							<div class="button"><span>
								<a href="details.php?proid=<?php echo $result_speaker['productId'] ?>"
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
