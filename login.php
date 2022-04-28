<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>
<?php
		$login_check = Session::get('customer_login'); 
		if($login_check){
			header('Location:order.php');
		}
?>
<?php
   
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        
        $insertCustomers = $cs->insert_customers($_POST);
        
    }
?>
<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
        
        $login_Customers = $cs->login_customers($_POST);
        
    }
?>
 <div class="main ml-3">
    <div class="content">
		<div class="container mt-4">
			<div class="row">
				<div class="col-lg-4 col-sm-5">
						<div class="login_panel ">
						<h3 class="text-light bg-dark mt-1 rounded text-center">KHÁCH HÀNG HIỆN TẠI</h3>
						<h5>ĐĂNG NHẬP BÊN DƯỚI 👇</h5>
						<?php
						if(isset($login_Customers)){
							echo $login_Customers;
						}
						?>
						<form action="" method="post">
							<div class="form-group">

								<div class="form-group border border-dark rounded">
									<input  type="text" name="email" class="w-100 field p-2" placeholder="Nhập email ...">
								</div>

								<div class="form-group border  border-dark rounded">
									<input  type="password" name="password" class="w-100 field p-2"  placeholder="Nhập mật khẩu ... " >
								</div>

							</div>
								
								<p class="note"><u>⚠⚠⚠  Nếu bạn quên mật khẩu vui lòng nhấp </u><a href="#">ở đây👈</a></p>
								<div class="buttons "><div><input type="submit" name="login" class="rounded bg-dark color-primary p-2" value="ĐĂNG NHẬP"></div></div>
						</form>
					</div>
					<?php

					?> 
				</div>

				<div class="col-lg-8 col-sm-7">
				<div class="register_account">
							<h3 class="text-light bg-info mt-1 rounded text-center ">ĐĂNG KÝ TÀI KHOẢN MỚI</h3>
							<?php
							if(isset($insertCustomers)){
								echo $insertCustomers;
							}
							?>
							<form action="" method="POST">
		   			 
								<div class="  border border-dark rounded " >
								<input type="text" name="name"class="w-100 p-2" placeholder="Nhập tên ..." >
								</div>
								
								<div class="  border border-dark rounded mt-1">
									<input type="text" name="address" class="w-100 p-2" placeholder="Nhập địa chỉ ..."  >
								</div>

								<div class="  border border-dark rounded mt-1">
									<input type="text" name="phone" class="w-100 p-2" placeholder="Nhập sđt..." >
								</div>
								
								<div class="  border border-dark rounded mt-1">
									<input type="text" name="email" class="w-100 p-2" placeholder="Nhập email  ..."  >
								</div>

								<div class="  border border-dark rounded mt-1">
									<input type="text" name="password" class="w-100 p-2" placeholder="Nhập mật khẩu..." >
								</div>

				
				
						</tbody>
					<div class="search mt-4"><div><input type="submit" name="submit" class="rounded bg-dark color-primary p-2" value="Tạo Tài Khoản"></div></div>
		    		</form>
    			</div>  	
				</div>

			</div>
		</div>


    </div>
 </div>
<?php 
	include 'inc/footer.php';
	
 ?>
