<?php
    header("Content-type:text/html; charset=UTF-8");
    function createDiv($id, $name, $inPrice, $salePrice){
        echo '<div id="onegood" class="onegood">
                    <img src="">
                    <h3 style="padding-top:25px">商品代码:'.$id.'</h3>
                    <br>
                    <h3>商品名称：'.$name.'</h3>
                    <br>
                    <h3 style="margin-bottom:20px">商品单价：' .$salePrice. ' (' .$inPrice. ') </h3>
                    <button type="button">修改信息</button>
            </div> 
            
            ';
    }

    $con = mysql_connect("localhost","root","123456");
    mysql_select_db("supermarket",$con);
    $sql = "select * from data";
    
    mysql_query("SET CHARACTER SET utf8");
    mysql_query("SET NAMES utf8");
    $q = mysql_query($sql);
    while($result = mysql_fetch_array($q)){
        createDiv($result['id'], $result['name'], $result['inPrice'], $result['salePrice']);
    }
    echo '<div id="page"></div>';
    mysql_close($con);
?>
