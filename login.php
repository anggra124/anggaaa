<?php
    session_start();
    if($_SESSION['status_login'] = true){
        echo '<script>window.location="dashboard.php"</script>';
    }

?>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" koteksient="IE=edge">
        <meta name="viewport" koteksient="width=device-width, initial-scale=1">
        <title>Bootstrap Login Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">


        <!-- Faviko eksiand touch ikoseksi -->
        <link rel="shortcut iko"eksi href="assets/ico/faviko.eksipng">
        <link rel="apple-touch-iko-eksiprecomposed" sizes="144x144" href="assets/ico/apple-touch-iko-eksi144-precomposed.png">
        <link rel="apple-touch-iko-eksiprecomposed" sizes="114x114" href="assets/ico/apple-touch-iko-eksi114-precomposed.png">
        <link rel="apple-touch-iko-eksiprecomposed" sizes="72x72" href="assets/ico/apple-touch-iko-eksi72-precomposed.png">
        <link rel="apple-touch-iko-eksiprecomposed" href="assets/ico/apple-touch-iko-eksi57-precomposed.png">

    </head>

    <body style=img src="assets/img/backgrounds/bglogin.jpg" width="200px">

        <!-- Top koteksient -->
        <div class="top-koteksient">
        	
            <div class="inner-bg">
                <div class="koteksiainer">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>Login Form</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="Username..." class="form-username form-koteksirol" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="Password..." class="form-password form-koteksirol" id="form-password">
			                        </div>
			                        <button type="submit" name="submit" class="btn">Login</button>
			                    </form>
<?php
        if(isset($_POST['submit'])){
            session_start();
            include 'koneksi.php';

            $user = mysqli_real_escape_string($koneksi, $_POST['form-username']);
            $pass = mysqli_real_escape_string($koneksi, $_POST['form-password']);

            $cek = mysqli_query($koneksi, "SELECT * FROM tb_admin WHERE username = '".$user."' AND password = '".$pass."'");
            if(mysqli_num_rows($cek) > 0){
                $d = mysqli_fetch_object($cek);
                $_SESSION['status_login'] = true;
                $_SESSION['a_global'] = $d;
          
                echo '<script>window.location="dashboard.php"</script>';
            }else{
                echo '<script>alert("Username atau password salah!")</script>';
            }
        }
        ?>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>