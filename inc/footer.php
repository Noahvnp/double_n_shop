</div>
   <div class="">
   	  <div class="container-fluid bg-dark mt-4">	
	     <div class="row p-4">
				<div class="col-lg-3 col-sm-6">
					<div class="p-3">
					<h4 class="text-light">Thông tin </h4>
						<ul>
						<li><a href="#">Dịch vụ khách hàng</a></li>
						<li><a href="#">Chính sách đổi trả</a></li>
						<li><a href="#"><span>Liên hệ với chúng tôi</span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 p-4">
					<h4 class="text-light">Điều khoản sử dụng</h4>
						<ul>
						<li><a href="about.php">Về chúng tôi</a></li>
						<li><a href="faq.php">Dịch vụ khách hàng</a></li>
						<li><a href="#">Chính sách bảo mật</a></li>
						</ul>
				</div>
				<div class="col-lg-3 col-sm-6 p-4">
					<h4 class="text-light">Tài khoản</h4>
						<ul>
							<li><a href="login.php">Đăng nhập</a></li>
							<li><a href="cart.php">Giỏ hàng</a></li>
							<li><a href="#">Kiểm tra đơn hàng</a></li>
							<li><a href="#">Trợ giúp</a></li>
						</ul>
				</div>
				<div class="col-lg-3 col-sm-6 p-4">
					<h4 class="text-light">Contact</h4>
						<ul>
							<li><span class="color-primary">namb1910106@student.ctu.edu.vn</span></li>
							<li><span class="color-primary">namb1910107@student.ctu.edu.vn</span></li>
						</ul>
						<div class="">
							<h4 class="text-light">Theo dõi chúng tôi</h4>
					   		  <ul class="d-flex justify-content-between w-25">
							      <li><a href="#" target="_blank" class="fa fa-facebook"></a></li>
							      <li><a href="#" target="_blank" class="fa fa-twitter"> </a></li>
							      <li><a href="#" target="_blank" class="fa fa-google"> </a></li>
						     </ul>
   	 					</div>
				</div>
			</div>
     </div>
    </div>
	<div id="back-top" class="fa fa-chevron-up text-center bg-dark color-primary rounded-circle pt-2"></div>
	<script type="text/javascript">
		$(document).ready(function() {
			$(window).scroll(function(){
				if($(this).scrollTop()) {
					$('#back-top').fadeIn();
				} else {
					$('#back-top').fadeOut();
				}  
			});

			$('#back-top').click(function() {
				$('html, body').animate({
					scrollTop: 0
				}, 200);
			});
		});
	</script>
	<script src="js/main.js"></script>
	
</body>
</html>
