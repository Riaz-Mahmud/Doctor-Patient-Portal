<?php

require "includes/db_connect.inc.php";



session_start();

$accountType = "";
$userrname = $password = "";
$usernameErr = $passwordErr = "";
$uPassInDB = ""; 


if ($_SERVER["REQUEST_METHOD"] == "POST") {

	$accountType = mysqli_real_escape_string($conn, $_POST['accountType']);
	if (empty($_POST['userrname'])) {
		$usernameErr = "Username cannot be empty!";
	} else {
		$userrname = mysqli_real_escape_string($conn, $_POST['userrname']);
	}

	if (empty($_POST['password'])) {
		$passwordErr = "Password cannot be empty!";
	} else {
		$password = mysqli_real_escape_string($conn, $_POST['password']);
	}
	if (!empty($userrname) && !empty($password)) {
		if ($accountType == "admin") {
			$sqlUserCheck = "select a_pass from admin where a_name = '$userrname';";
			$resultUserCheck = mysqli_query($conn, $sqlUserCheck);
			$userCount = mysqli_num_rows($resultUserCheck);

			if ($userCount < 1) {
				$usernameErr = "User does not exist";
			} else {
				while ($row = mysqli_fetch_assoc($resultUserCheck)) {
					$uPassInDB = $row['a_pass'];
				}
				$a = password_verify($password, $uPassInDB);
				echo "$a";
				if (password_verify($password, $uPassInDB)) {
					$_SESSION["user_name"] = $userrname;
					if(isset($_POST['rememberme'])){
						// setcookie('type',$accountType,time()+86400);
						setcookie('usenam',$userrname,time()+86400);
						setcookie('pass',$password,time()+86400);
					
						header("Location: ./admin");
					}else{
						header("Location: ./admin");
					}
				} else {
					$passwordErr = "Wrong password!";
				}
			}
		} else if ($accountType == "doctor") {
			$sqlUserCheck = "select d_pass from doctor where d_name = '$userrname';";
			$resultUserCheck = mysqli_query($conn, $sqlUserCheck);
			$userCount = mysqli_num_rows($resultUserCheck);

			if ($userCount < 1) {
				$usernameErr = "User does not exist";
			} else {
				while ($row = mysqli_fetch_assoc($resultUserCheck)) {
					$uPassInDB = $row['d_pass'];
				}
				$a = password_verify($password, $uPassInDB);
				echo "$a";
				if (password_verify($password, $uPassInDB)) {
					$_SESSION["user_name"] = $userrname;
					if(isset($_POST['rememberme'])){
						//setcookie('type',$accountType,time()+86400);
						setcookie('usenam',$userrname,time()+86400);
						setcookie('pass',$password,time()+86400);
					
						header("Location: ./doctor");
					}else{
						header("Location: ./doctor");
					}
				} else {
					$passwordErr = "Wrong password!";
				}
			}
		} else if ($accountType == "patient") {
			$sqlUserCheck = "select p_pass from patient where p_name = '$userrname';";
			$resultUserCheck = mysqli_query($conn, $sqlUserCheck);
			$userCount = mysqli_num_rows($resultUserCheck);

			if ($userCount < 1) {
				$usernameErr = "User does not exist";
			} else {
				while ($row = mysqli_fetch_assoc($resultUserCheck)) {
					$uPassInDB = $row['p_pass'];
				}
				$a = password_verify($password, $uPassInDB);
				echo "$a";
				if (password_verify($password, $uPassInDB)) {
					$_SESSION["user_name"] = $userrname;
					if(isset($_POST['rememberme'])){
						//setcookie('type',$accountType,time()+86400);
						setcookie('usenam',$userrname,time()+86400);
						setcookie('pass',$password,time()+86400);
					
						header("Location: patient/dashboard.php");
					}else{
						header("Location: patient/dashboard.php");
					}
				} else {
					$passwordErr = "Wrong password!";
				}
			}
		}
	}
}
?>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Login</title>
</head>

<body>
	<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light ">
			<a class="navbar-brand" href="#"><img src="images/logo1.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto" align="right">
					<li class="nav-item active">
						<a class="nav-link" href="index.php">Home </a>
				</ul>
			</div>
		</nav>
	</section>
	<div class="container">
		<br>
		<h1 class="text-black text-center">Login</h1>
		<form name="myForm" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" enctype="multipart/form-data">
			<div class="col-lg-8 m-auto d-block">
				<div class="form-group">
					<label>Type</label>
					<!-- value="<?php if(isset($_COOKIE['type'])){
						echo $_COOKIE['type'];} ?>" -->
					<select class="form-control" name="accountType" >
						<option value="admin" <?php if ($accountType == "admin") echo "selected"; ?>>Admin</option>
						<option value="doctor" <?php if ($accountType == "doctor") echo "selected"; ?>>Doctor</option>
						<option value="patient" <?php if ($accountType == "patient") echo "selected"; ?>>Patient</option>
					</select>
				</div>
				<div class="form-group">
					<label for="user">Username:</label>
					<input type="text" name="userrname" value="<?php if(isset($_COOKIE['usenam'])){echo $_COOKIE['usenam'];} ?>" id="user" class="form-control">
					<span style="color:red;"><?php echo $usernameErr; ?></span></td>
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" name="password" class="form-control" value="<?php if(isset($_COOKIE['pass'])){echo $_COOKIE['pass'];} ?>">
					<span style="color:red;"><?php echo "$passwordErr"; ?></span></td>
				</div>
				<div class="form-group">
					<input type="checkbox"  name="rememberme"> Remember Me
					
				</div>
				<input type="submit" name="submit" value="Login" class="btn btn-success">
				<br>
				<div class="form-group">
					Don't have any account?
					<a href="signup.php">Click here</a>
				</div>
			</div>
		</form>
		<script>
			var loginForm = document.forms.myForm;
			loginForm.onsubmit = function() {
				var userName = loginForm.userrname.value;
				var pass = loginForm.password.value;
				if (userName == "") {
					alert("Username must be filled out!");
					return false;
				}
				if (pass == "") {
					alert("Password must be filled out!");
					return false;
				}
			}
		</script>
	</div>
</body>

</html>