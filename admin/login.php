<?php
//----------------- sữa lại đường dẫn---------------------------------
	include '../classes/adminlogin.php';
?>
<?php
	$class = new adminlogin();
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
     	$adminUser = $_POST['adminUser'];
     	$adminPass = md5($_POST['adminPass']);

     	$login_check = $class->login_admin($adminUser,$adminPass);
     	
	}
?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
   

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
						integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">



    
  </head>
  <body>
  

  <div class="half">
    <div class="bg order-1 order-md-2" style="background-image: url('img/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block">
              <div class="text-center mb-5">
              <h3>ĐĂNG NHẬP ADMIN</h3>
            <?php

          if(isset($login_check)){
            echo $login_check;
          }
          ?>
              </div>
              <form action="login.php" method="post">
                <div class="form-group first">
                  <label for="username">TÊN ĐĂNG NHẬP</label>
                  <input type="text" class="form-control" placeholder="Tên đăng nhập ..." name="adminUser" id="username">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">MẬT KHẨU</label>
                  <input type="password" class="form-control" placeholder="Vui lòng nhập mật khẩu" name="adminPass" id="password">
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                  <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">GHi NHỚ TÔI</span>
                    <input type="checkbox" checked="checked"/>
                    <div class="control__indicator"></div>
                  </label>
                  <span class="ml-auto"><a href="#" class="forgot-pass">QUÊN MẬT KHẨU</a></span> 
                </div>

                <input type="submit" value="ĐĂNG NHẬP" class="btn btn-block btn-primary">

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>