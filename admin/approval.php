<?php
session_start();
include('../includes/db_connect.inc.php');
include('../includes/header.php');
include('navbar.php');



if (isset($_POST['approval'])) {
    // $d = $_POST["d_id"];

    // $q =  "SELECT * FROM `docreq` WHERE d_id= '$d'";
    // $res = mysqli_query($conn, $q);
    // $rows = mysqli_fetch_array($res , MYSQLI_ASSOC);

    $id = $_POST['d_id'];

    $q =  "SELECT * FROM `docreq` WHERE d_id= '$id'";
    $res = mysqli_query($conn, $q);
    $rows = mysqli_fetch_array($res, MYSQLI_ASSOC);
}

if (isset($_POST['acceptbtn'])) {
    $uname = $_POST['uname'];
    $pass = $_POST['pass'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $dob = $_POST['dob'];
    $bg = $_POST['bGroup'];
    $email = $_POST['email'];
    $phn = $_POST['pNumber'];

    // $uname = $rows['d_name'];
    // $pass = $rows['d_pass'];
    // $fname = $rows['d_fname'];
    // $lname = $rows['d_lname'];
    // $dob = $rows['d_dob'];
    // $bg = $rows['d_bgroup'];
    // $email = $rows['d_email'];
    // $phn = $rows['d_phone'];

    $query = "INSERT INTO `doctor`( `d_name`, `d_pass`, `d_fname`, `d_lname`, `d_dob`, `d_bgroup`, `d_email`, `d_phone`) VALUES ('$uname','$pass','$fname','$lname','$dob','$bg','$email','$phn');";
    $query_run = mysqli_query($conn, $query);
    if ($query_run) {
        $query2 = "DELETE FROM `docreq` WHERE d_name = '$uname';";
        $query2_run = mysqli_query($conn, $query2);
        header('Location: doctorRequest.php');
    } else {
        echo '<script type=text/javaScript> alert("Something wrong data not updated!") </script>';
    }
}
if (isset($_POST['rjctbtn'])) {
    $uname = $_POST['uname'];

    $query3 = "DELETE FROM `docreq` WHERE d_name = '$uname';";
    $query3_run = mysqli_query($conn, $query3);
    if ($query3_run) {
        header('Location: doctorRequest.php');
    } else {
        echo '<script type=text/javaScript> alert("Something wrong data not updated!") </script>';
    }
}


include('sidebar.php');
?>

<div class="docReq">
<h1 class="text-white bg-dark text-center">
                Approval form

            </h1>
    <br>
    <div class="d-flex justify-content-center align-items-center container ">
        <div class="col-md-8 ">
           
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">


                <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control" name="uname" value="<?php echo $rows['d_name']; ?>">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="hidden" class="form-control" name="pass" value="<?php echo $rows['d_pass']; ?>">
                </div>
                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" class="form-control" name="fname" value="<?php echo $rows['d_fname']; ?>">
                </div>
                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" class="form-control" name="lname" value="<?php echo $rows['d_lname']; ?>">
                </div>
                <div class="form-group">
                    <label>Date of Birth</label>
                    <input type="text" class="form-control" name="dob" value="<?php echo $rows['d_dob']; ?>">
                </div>
                <div class="form-group">
                    <label>Blood Group</label>
                    <input type="text" class="form-control" name="bGroup" value="<?php echo $rows['d_bgroup']; ?>">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" class="form-control" name="email" value="<?php echo $rows['d_email']; ?>">
                </div>
                <div class="form-group">
                    <label>Phone</label>
                    <input type="text" class="form-control" name="pNumber" value="<?php echo $rows['d_phone']; ?>">
                </div>
                <!-- <button type="button" class="btn btn-success" name="acceptbtn">Accept</button> -->
                <input type="submit" class="btn btn-success" value="Accept" name="acceptbtn" id="">
                <input type="submit" class="btn btn-danger" value="Reject" name="rjctbtn" id="">
                <!-- <button type="button" class="btn btn-danger" name="rjctbtn">Reject</button> -->
            </form>
        </div>

    </div>

</div>
</div>
</div>
</body>

</html>