<?php
	
    include 'lib/session.php';
    Session::init();
?>
<?php
	
	include 'lib/database.php';
	include 'helpers/format.php';

	spl_autoload_register(function($class){
		include_once "classes/".$class.".php";
	});
		

	$db = new Database();
	$fm = new Format();
	$ct = new cart();
	$cat = new category();
	$cs = new customer();
	$product = new product();
		
	      	 	
?>
<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>
<!doctype html>
<html lang="en">
  <head>
  	<title>Double N Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
						integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/slider.css">
    <link rel="stylesheet" href="css/responsive.css">

	</head>
	<body>
		<div class="container-fluid px-md-5 mt-2">
			<div class="row justify-content-between">
				<div class="col-md-8 order-md-last">
					<div class="row">
						<div class="col-md-6 text-center">
							<a class="navbar-brand" href="index.php">Double N <span>Architecture Agency</span></a>
						</div>
						<div class="col-md-6 d-md-flex justify-content-end mb-md-0 mb-3">
							<div class="col-md-8 d-md-flex">
								<form action="search.php" method="post" class="searchform order-lg-last border border-secondary">
									<div class="form-group d-flex">
										<input type="text" class="form-control pl-3" placeholder="Tìm sản phẩm" name="tukhoa">
										<button type="submit" name="search_product" class="form-control search"><span class="fa fa-search"></span></button>
									</div>
								</form>
							</div>
							<div class="col-md-4">
								<div class="d-flex justify-content-between flex-row">
									<a href="cart.php" class="fa fa-shopping-cart cart-btn">
										<?php
											$check_cart = $ct->check_cart();
												if($check_cart){
													$sum = Session::get("sum");
													$qty = Session::get("qty");
													echo '<span class="cart-btn__quantity">'.$qty.'</span></a>';
													echo '<span class=" py-3 pl-4 pr-3">'.$fm->format_currency($sum).'đ</span>';
													}else{
													echo '<span class="cart-btn__quantity">0</span></a>';
												}
										?>
										
									
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex">
					<div class="social-media">
		    		<p class="mb-0 d-flex">
		    			<a href="login.php" class="d-flex align-items-center justify-content-center slash">Đăng Kí </a>
		    			<a href="login.php" class="d-flex align-items-center justify-content-center"> Đăng Nhập</a>
		    		</p>
            	</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid">
	    
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav m-auto">
	        	<li class="nav-item"><a href="index.php" class="nav-link">Trang Chủ</a></li>
	        	<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="products.php" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản Phẩm</a>
					<div class="dropdown-menu" aria-labelledby="dropdown04">
						<a class="dropdown-item" href="smartphone.php">Điện thoại</a>
						<a class="dropdown-item" href="laptop.php">Laptop</a>
						<a class="dropdown-item" href="accessories.php">Phụ kiện</a>
						<a class="dropdown-item" href="speaker.php">Loa</a>
					</div>
				</li>
	        	<li class="nav-item"><a href="topbrands.php" class="nav-link">Top thương hiệu</a></li>
                <li class="nav-item"><a href="contact.php" class="nav-link">Liên Hệ</a></li>
				<?php 
					if(isset($_GET['customer_id'])){
						$customer_id = $_GET['customer_id'];
						$delCart = $ct->del_all_data_cart();
						$delCompare = $ct->del_compare($customer_id);
						Session::destroy();
					}
				?>
				<?php
					$login_check = Session::get('customer_login'); 
					if($login_check==false){
						echo '<li class="nav-item"><a href="login.php" class="nav-link">Đăng Nhập</a></li>';
					}else{
						echo '<li class="nav-item"><a href="?customer_id='.Session::get('customer_id').'" class="nav-link">Đăng xuất</a></li>';
					}
				?>
	        </ul>
	      </div>
	    </div>
	  </nav>