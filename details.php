<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
?>
<?php

	if(!isset($_GET['proid']) || $_GET['proid']==NULL){
       echo "<script>window.location ='404.php'</script>";
    }else{
        $id = $_GET['proid']; 
    }
 	$customer_id = Session::get('customer_id');
  
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {

        $quantity = $_POST['quantity'];
        $insertCart = $ct->add_to_cart($quantity, $id);
        
    }
?>
 <div class="main">
    <div class="content">
    	<div class="section group">
		<?php
		$get_product_details = $product->get_details($id);
		if($get_product_details){
			while($result_details = $get_product_details->fetch_assoc()){
		?>
		
		<div class="container-fluid my-5">
			<div class="row">
				<div class="col-lg-8 col-sm-6">
					<div class="d-flex align-items-center">
						<div class="mb-auto p-3">
							<img src="admin/uploads/<?php echo $result_details['image'] ?>" alt=""  width="300px"/>
						</div>
						<div class="desc span_3_of_2">
							<h2><?php echo $result_details['productName'] ?></h2>
							<p><?php echo $fm->textShorten($result_details['product_desc'],150) ?></p>					
							<div class="price">
								<p>Giá: <span><?php echo $fm->format_currency($result_details['price'])." "."VNĐ" ?></span></p>
								<p>Loại: <span><?php echo $result_details['catName'] ?></span></p>
								<p>Thương hiệu: <span><?php echo $result_details['brandName']?></span></p>
							</div>
							<div class="add-cart">
								<form action="" method="post">
									<input type="number" class="border rounded p-1" name="quantity" value="1" min="1"/>
									<input type="submit" class="border rounded bg-dark color-primary p-1" name="submit" value="Thêm giỏ hàng"/>
								</form>		
								<?php
									if(isset($insertCart)){
										echo $insertCart;
									}
								?>	
							</div>
					</div>
				</div>
			</div>			
					
				


				<div class="col-lg-4">
					<div class="d-flex align-items-start flex-column p-2">
						<h2 class="border-bottom border-dark">Danh mục sản phẩm</h2>
						<ul>
						<?php 
						$getall_category = $cat->show_category_fontend();
							if($getall_category){
								while($result_allcat = $getall_category->fetch_assoc()){
						?>
							<li><a  class="border-bottom" href="productbycat.php?catid=<?php echo $result_allcat['catId'] ?>"><?php echo $result_allcat['catName'] ?></a></li>
						<?php
							}
						}
						?>
						</ul>
					</div>
 				</div>

				<div class="col-lg-8 col-sm-6 my-4 p-4">
					<h2 class="border rounded bg-dark color-primary p-1">Chi tiết sản phẩm</h2>
					<?php echo $fm->textShorten($result_details['product_desc'],5000) ?>
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
