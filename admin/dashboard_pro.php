<?php
session_start();
include('connect.php');

$username = mysqli_real_escape_string($conn, $_POST['username']);
$password = mysqli_real_escape_string($conn,$_POST['password']);

if(!$username || !$password)
{
    $msg = 'error';
    $comment = 'Both Username and Password must be provided!';
    include('index.php');
    exit;
}

if (!filter_var($username, FILTER_VALIDATE_EMAIL)) {
    $msg = 'error';
    $comment = 'Wrong Email Format!';
    include('index.php');
    exit;
} 


$query = "select * from admin where Username = '$username' and '$password' and id ='2'";
if (!$query){
    echo 'error with your query';
    exit;
}
$result = mysqli_query($conn,$query);

if($result){
    $_SESSION['valid_user'] = $username;
    // $_SESSION['valid_name'] = $row['firstname'];
    header('location:dashboard.php');
    exit;
}
else{
    $msg = 'error';
    $comment = 'Error Logging in!';
    include('index.php');
    exit;
}

?>