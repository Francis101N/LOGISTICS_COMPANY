<?php
session_start();

$token = bin2hex(random_bytes(16)); 
$Tracking_no = $_POST['tracking_no'];
$Fullnames = $_POST['fullnames'];
$Email = $_POST['email'];
$Freight_class = $_POST['freight_class'];
$Items = $_POST['items'];
$Weight = $_POST['weight'];
$Pickup_location = $_POST['pickup_location'];
$Dropoff_location = $_POST['dropoff_location'];
$Length = $_POST['length'];
$Delivery_date = $_POST['delivery_date'];
$Status = $_POST['status'];


include('connect.php');
$query = "insert into orders set Token = '$token', Tracking_no  = '$Tracking_no' , R_fullname = '$Fullnames' , R_email = '$Email', Freight_class = '$Freight_class', Items = '$Items',Weight = '$Weight', Pickup_location ='$Pickup_location', Dropoff_location ='$Dropoff_location', Length ='$Length', Delivery_date = '$Delivery_date', Status = '$Status' ";


$result = mysqli_query($conn,$query);

if($result)
{
   $success = 'New Order has been updated';
   include('add-order.php');
   exit;
}
else{
    $error = 'The Order with Tracking no : '.$Tracking_no.' failed to Update';
    include('add-order.php');
    exit;
}

?>