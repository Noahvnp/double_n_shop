<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>

 <div class="main">
    <div class="content">
    	<?php
	     	    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

			        $tukhoa = $_POST['tukhoa'];
			        $search_product = $product->search_product($tukhoa);
			        
			    }
	      	?>
    	<div class="content_top">
    		
    		<div class="heading">	
    			<h3>Từ khóa tìm kiếm : <?php echo $tukhoa ?></h3>
    		</div>
    	</div>
    	
		<div class="row mx-4 px-4">
	      	<?php
	      	
	      	 if($search_product){
	      	 	while($result = $search_product->fetch_assoc()){
	      	?>
				<div class="col-lg-3 col-sm-6 mb-3">
					<div class="product-card">
						<div class="d-flex align-items-start align-items-center space-between flex-column border rounded border-dark bg-white p-4"  style="height: 440px;">
							<a href="details.php" class="image-box mb-auto"><img src="admin/uploads/<?php echo $result['image'] ?>" width="150px" alt="" /></a>
							<h5><?php echo $fm->textShorten($result['productName'], 50) ?></h5>
							<p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
							<p><span class="price"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></span></p>
							<div class="button"><span>
								<a href="details.php?proid=<?php echo $result['productId'] ?>"
								class="align-self-end bg-dark border rounded border-primary p-2">Chi tiết</a></span>
							</div>
						</div>
					</div>
				</div>
			<?php
			}

		}else{
			echo 'Category Not Avaiable';
		}
			?>
			</div>

	
	
    </div>
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>
