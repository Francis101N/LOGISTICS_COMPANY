<?php
session_start();

$id = $_GET['id'];

include('connect.php');
$query = "delete from orders where id = '$id'";
$result = mysqli_query($conn,$query);

if($result)
{
   $success = 'Order has been removed Successfully!';
   include('order.php');
   exit;
}
?>