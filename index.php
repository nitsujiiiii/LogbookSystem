<?php 
include "admin/config.php";
ini_set('display_errors', 0);
ini_set('display_errors', false);
date_default_timezone_set('Asia/Manila');
$time = date("h:i:s");
$today = date("D - F d, Y");
$date = date("Y-m-d");
$in = date("H:i:s");
$out = "12:00:00";

if (isset($_POST['attendance'])) 
{
  $_SESSION['expire'] =  date("H:i:s", time() + 1);
  $code = $_POST['operation'];
  if($code == "time-in")

  {

    $id = $_POST['visitors_id'];
  $sql2 = "SELECT * FROM visitors_list WHERE visitors_card = '$id'";



    $fname = $row['fname'];
    $lname = $row['lname'];


//$sql = "SELECT * FROM visitors_list WHERE visitors_card = '$id'";
//}
//else{

    $sql = "INSERT INTO `visitors_attendance`(`visitors_card`, `visitors_date`, `time_in`, `time_out`) VALUES ('$id','$date','$in','$out')";

    $result = $conn->query($sql);

    if ($result == TRUE) {
      echo "New record created successfully.";
    }else{
      echo "Error:". $sql . "<br>". $conn->error;
    }

    $conn->close();
      }

      if($code == "time-out")
      {
       $id = $_POST['visitors_id'];


    $sql = "UPDATE visitors_attendance SET time_out = '$in' WHERE visitors_card = '$id' AND visitors_date = '$date'";

    $result = $conn->query($sql);

    if ($result == TRUE) {
      echo "New record created successfully.";
    }else{
      echo "Error:". $sql . "<br>". $conn->error;
    }

    $conn->close();
      
    }

}



 ?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Logbook System</title>
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="admin/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="admin/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="admin/dist/css/adminlte.min.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <script src="admin/dist/js/1.js"></script>
  <script src="admin/dist/js/2.js"></script>
  <script src="admin/dist/js/3.js"></script>
  <style type="text/css">
  .mt20{
    margin-top:20px;
  }
  .result{
    font-size:20px;
  }
  .bold{
    font-weight: bold;
  }
  </style>
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <p id="date"><?php echo $today; ?></p>
    <p id="time" class="bold"><?php echo $time; ?></p>
  </div>

  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Enter ID</p>

      <form action="" method="POST">

        <div class="input-group mb-3">
          <select name="operation" class="form-control">
            <option value="time-in">Time In</option>
            <option value="time-out">Time Out</option>
          </select>
        </div>

        <div class="input-group mb-3">
          <input type="text" name="visitors_id" class="form-control" placeholder="ID">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-id-card"></span>
            </div>
          </div>
        </div>

        <button type="submit" name="attendance" >Submit</button>

      </form>
    </div>

    <?php
    echo $_SESSION['mess'];
    echo $_SESSION['success'];

    $dd = date("H:i:s");

    if($dd == $_SESSION['expire'])
    {
      session_unset();
    }
    ?>

  </div>
</div>
<br><br>
<script src="admin/plugins/jquery/jquery.min.js"></script>
<script src="admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="admin/dist/js/adminlte.min.js"></script>
<script src="admin/plugins/moment/moment.min.js"></script>
<script src="admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script src="admin/plugins/sweetalert2/sweetalert2.min.js"></script>
<script src="admin/plugins/toastr/toastr.min.js"></script>
<script type="text/javascript">
var interval = setInterval(function() {
   var momentNow = moment();
   $('#date').html(momentNow.format('dddd').substring(0,3).toUpperCase() + ' - ' + momentNow.format('MMMM DD, YYYY'));
   $('#time').html(momentNow.format('hh:mm:ss A'));
 }, 100);
</script>


</body>
</html>
