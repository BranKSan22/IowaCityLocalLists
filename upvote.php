<?php
include_once('config.php');
include_once('dbutils.php');

session_start();
$session_list_id = $_SESSION['listid'];
$session_upvotes_id = $_SESSION['upvotes'];

$db = connectDB($DBHost, $DBUser, $DBPassword, $DBName);

$query = "UPDATE list SET upvotes = upvotes + 1 WHERE listid = $session_list_id");

$result = queryDB($query, $db);
    
    // send response back
    $response = array();
    $response['status'] = 'success';
    $response['id'] = $session_list_id;
    header('Content-Type: application/json');
    echo(json_encode($response));

?>