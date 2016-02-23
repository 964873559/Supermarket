<?php
    session_start();
    if(!isset($_POST["submit"])){
        exit('ffff');
    }
    $username = $_POST['username'];
    $password = $_POST['password'];

    $con = mysql_connect("localhost", "root", "123456");
    if(!$con){
        die("fai");
    }
    mysql_select_db("supermarket",$con);
    mysql_query("SET CHARACTER SET utf8");
    mysql_query("SET NAMES utf8");

    $sql = "select * from user where username='".$username."' and password='".$password."' limit 1";
    $check_query = mysql_query($sql);
    if(mysql_fetch_array($check_query)){
        $_SESSION['username'] = $username;
        echo "<script> location.href='sales.html';</script>";
    }
    else{
        echo "<script> location.href='index.html';
                        alert('failed');
        </script>";
    }

?>
