<!DOCTYPE html>
 <?php #include("func.php");?>
<html>
<head>
	<title>Patient Details</title>
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

</head>
<body>
<?php
include("newfunc.php");
if(isset($_POST['app_search_submit']))
{
	$contact=$_POST['app_contact'];
	$query = "select * from appointmenttb where contact= '$contact';";
  $result = mysqli_query($con,$query);
  $row=mysqli_fetch_array($result);
  if($row['fname']=="" & $row['lname']=="" & $row['email']=="" & $row['contact']=="" & $row['doctor']=="" & $row['docFees']=="" & $row['appdate']=="" & $row['apptime']==""){
    echo "<script> alert('Entri tidak ditemukan!'); 
          window.location.href = 'admin-panel1.php#list-doc';</script>";
  }
  else {
    echo "<div class='container-fluid' style='margin-top:50px;'>
    <div class='card'>
    <div class='card-body' style='background-color:#342ac1;color:#ffffff;'>
  <table class='table table-hover'>
    <thead>
      <tr>
        <th scope='col'>Nama Depan</th>
        <th scope='col'>Nama Belakang</th>
        <th scope='col'>Email</th>
        <th scope='col'>Kontak</th>
        <th scope='col'>Nama Dokter</th>
        <th scope='col'>Tagihan Konsultasi</th>
        <th scope='col'>Tanggal Konsultasi</th>
        <th scope='col'>Waktu Konsultasi</th>
        <th scope='col'>Status Konsultasi</th>
      </tr>
    </thead>
    <tbody>";
  
    
          $fname = $row['fname'];
          $lname = $row['lname'];
          $email = $row['email'];
          $contact = $row['contact'];
          $doctor = $row['doctor'];
          $docFees= $row['docFees'];
          $appdate= $row['appdate'];
          $apptime = $row['apptime'];
          if(($row['userStatus']==1) && ($row['doctorStatus']==1))  
                    {
                      $appstatus = "Aktif";
                    }
                    if(($row['userStatus']==0) && ($row['doctorStatus']==1))  
                    {
                      $appstatus = "Dibatalkan oleh Anda";
                    }

                    if(($row['userStatus']==1) && ($row['doctorStatus']==0))  
                    {
                      $appstatus = "Dibatalkan oleh Dokter";
                    }
          echo "<tr>
            <td>$fname</td>
            <td>$lname</td>
            <td>$email</td>
            <td>$contact</td>
            <td>$doctor</td>
            <td>$docFees</td>
            <td>$appdate</td>
            <td>$apptime</td>
            <td>$appstatus</td>
          </tr>";
    echo "</tbody></table><center><a href='admin-panel1.php' class='btn btn-light'>Kembali ke Dasbor</a></div></center></div></div></div>";
  }
  }
	
?>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script> 
</body>
</html>