<?php
    header("Content-type:text/html; charset=UTF-8");
    
    if($_SERVER["REQUEST_METHOD"]!="POST"){
        exit('fff');
    }
    $type = $_POST["type1"];
    $value = $_POST["value1"];

    function createDiv($id, $name, $num){
        echo '
            <div id="onegood" class="onegood">
                <img src="">
                <h3 style="padding-top:25px">商品代码：'.$id.'</h3>
                <br>
                <h3>商品名称：'.$name.'</h3>
                <br>
                <h3 style="margin-bottom:20px">剩余库存：'.$num.'</h3>
            </div>

            
            ';
        /*    
        <button type="button">增加库存</button>
        <button class="moreInfo" type="button">详细信息</button>
        */
    }

    $con = mysql_connect("localhost","root","123456");
    mysql_select_db("supermarket",$con);
    $sql = "select * from data where $type like '%$value%'";
    mysql_query("SET CHARACTER SET utf8");
    mysql_query("SET NAMES utf8");
    $q = mysql_query($sql);
    while($result = mysql_fetch_array($q)){
        createDiv($result['id'],$result['name'],$result['num']);
    }
    
    mysql_close($con);

?>
