<?php
    header("Content-type:text/html; charset=UTF-8");
    if($_SERVER["REQUEST_METHOD"]!="POST"){
        exit('fff');
    }
    $name = $_POST["_1name"];
    $saleNum = $_POST["_1num"];
    $saleAllPrice = $_POST["_1price"];
    echo "$name,$saleNum,$saleAllPrice...";
    
    $con = mysql_connect("localhost","root","123456");
    mysql_select_db("supermarket",$con);
    mysql_query("SET CHARACTER SET utf8");
    mysql_query("SET NAMES utf8");

    $sql = "select * from data where name = '{$name}'";
    $q = mysql_query($sql);
    $result = mysql_fetch_array($q);

    $id = $result['id'];
    $inPrice = $result['inPrice'];
    $salePrice = $result['salePrice'];
    $num = $result['num'];
    $saleAmount = $result['saleAmount'];
    $earn = $result['earn'];

    $sql = "insert into sale(`id`,`name`,`salePrice`,`saleNum`) values('{$id}','{$name}','{$saleAllPrice}','{$saleNum}')";
    mysql_query($sql);

    $xnum = $num - $saleNum;
    $xsaleAmount = $saleAmount + $saleNum;
    $xearn = $earn + ($salePrice - $inPrice) * $saleNum;
    $sql = "update data set `num`= '{$xnum}',`saleAmount`='{$xsaleAmount}',`earn`='{$xearn}' where `id`='{$id}'";
    mysql_query($sql);

    echo "qnmlgb";

?>
