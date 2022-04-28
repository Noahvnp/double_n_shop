<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
<?php
	if(isset($_GET['cartid'])){
        $cartid = $_GET['cartid']; 
        $delcart = $ct->del_product_cart($cartid);
    }
 	if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
 		$cartId = $_POST['cartId'];
        $quantity = $_POST['quantity'];
        $update_quantity_cart = $ct->update_quantity_cart($quantity, $cartId);
        if($quantity<=0){
        	$delcart = $ct->del_product_cart($cartId);
        }
    }
?>
<?php
	if(!isset($_GET['id'])){
		echo "<meta http-equiv='refresh' content='0;URL=?id=live'>";
	}
?>
 <div class="main">
    	<div class="container-fluid p-4">		
			<div class="text-center color-primary">
					<?php
						$check_cart = $ct->check_cart();
							if($check_cart){
					?>
			    	<h2 class="text-center color-primary">Giỏ hàng của bạn</h2>
			    	<?php
			    	 if(isset($update_quantity_cart)){
			    	 	echo $update_quantity_cart;
			    	 }
			    	?>
			    	<?php
			    	 if(isset($delcart)){
			    	 	echo $delcart;
			    	 }
			    	?>
						<table class="table">
							<thead class="bg-dark color-primary">
								<tr>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Hình ảnh</th>
								<th scope="col" colspan="2">Giá</th>
								<th scope="col" colspan="2">Số lượng</th>
								<th scope="col" colspan="2">Thành tiền</th>
								<th scope="col">Thao tác</th>
								</tr>
							</thead>
							
							<tbody>
								<?php
								$get_product_cart = $ct->get_product_cart();
								if($get_product_cart){
									$subtotal = 0;
									$qty = 0;
									while($result = $get_product_cart->fetch_assoc()){
								?>
								<tr>
									<td><?php echo $result['productName'] ?></td>
									<td><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" width="80px"></td>
									<td colspan="2"><?php echo $fm->format_currency($result['price'])." "."VNĐ" ?></td>
									<td colspan="2">
										<form action="" method="post" class="">
											<input type="hidden" name="cartId" value="<?php echo $result['cartId'] ?>"/>
											<input type="number" name="quantity" min="0"  value="<?php echo $result['quantity']?>" class="w-25 border rounded px-1 mr-2"/>
											<input type="submit" name="submit" value="Cập nhật" class="border rounded bg-dark color-primary p-1"/>
										</form>
									</td>
									<td colspan="2"><?php
									$total = $result['price'] * $result['quantity'];
									echo $fm->format_currency($total)." "."VNĐ";
									?></td>
									<td><a onclick="return confirm('Are you want to delete?');" href="?cartid=<?php echo $result['cartId'] ?>">Xóa</a></td>
								</tr>
							</tbody>
							
						<?php
							$subtotal += $total;
							$qty = $qty + $result['quantity'];
							}
						}
						?>
							
						</table>
						
						<table style="float:right;text-align:left;" width="40%">
							<tr>
								<th class="color-primary">Thành tiền : </th>
								<td><?php 

									echo $fm->format_currency($subtotal)." "."VNĐ";
									Session::set('sum',$subtotal);
									Session::set('qty',$qty);
								?></td>
							</tr>
							<tr>
								<th class="color-primary">VAT : </th>
								<td>10%</td>
							</tr>
							<tr>
								<th class="color-primary">Tổng tiền :</th>
								<td><?php 

								$vat = $subtotal * 0.1;
								$gtotal = $subtotal + $vat;
								echo $fm->format_currency($gtotal)." "."VNĐ";
								?></td>
							</tr>
					   </table>
					   </div>
						<div class="row my-3">
							<div class="shopleft">
								<a href="index.php"> <img src="images/shop.png" alt="" /></a>
							</div>
							<div class="shopright">
								<a href="payment.php"> <img src="images/check.png" alt="" /></a>
							</div>
						</div>

						<?php
							}else{
								echo 'Giỏ hàng của bạn đang trống! Vui long quay lại mua sắm.';
							}
						?>
    	</div>  	
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>