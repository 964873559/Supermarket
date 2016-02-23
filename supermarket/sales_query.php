<?php
    header("Content-type:text/html; charset=UTF-8");
    if($_SERVER["REQUEST_METHOD"]!="POST"){
        exit('fff');
    }
    $date = $_POST["date1"];
    $id = $_POST["id1"];
    $name = $_POST["name1"];

    function createDiv($id,$name,$salePrice,$saleNum,$saleAllPrice,$saleDate){
       echo  '
            <tr>
                <td>'.$id.'</td>
                <td>'.$name.'</td>
                <td>'.$salePrice.'</td>
                <td>'.$saleNum.'</td>
                <td>'.$saleAllPrice.'</td>
                <td>'.$saleDate.'</td>
            </tr>
           ';
    }

    $con = mysql_connect("localhost","root","123456");
    mysql_select_db("supermarket",$con);
    mysql_query("SET CHARACTER SET utf8");
    mysql_query("SET NAMES utf8");
    $sql = "select * from sale where `saleTime` like '%$date%' and `id` like '%$id%' and `name` like '%$name%'";
    $q = mysql_query($sql);
    while($result = mysql_fetch_array($q)){
        createDiv($result['id'],$result['name'],$result['salePrice']/$result['saleNum'],$result['saleNum'],$result['salePrice'],$result['saleTime']);
    }

?>
