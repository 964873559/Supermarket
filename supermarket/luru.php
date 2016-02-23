<?php
    header("Content-type:text/html; charset=utf-8");
    $id = $name = $inPrice = $salePrice = $inNum = $inTime = $num = $saleAmount = $earn = "";
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $id = $_POST["id"];
        $name = $_POST["name"];
        $inPrice = $_POST["inPrice"];
        $salePrice = $_POST["salePrice"];
        $inNum = $_POST["inNum"];
        $inTime = time();
        $mysqlTime = date('Y-m-d H:i:s',$inTime);
        $num = $inNum;

        $con = mysql_connect("localhost","root","123456");
        if(!$con){
            die('Could not connect : ' . mysql_error());
        }
        mysql_select_db("supermarket",$con);
        mysql_query("SET CHARACTER SET utf8");
        mysql_query("SET NAMES utf8");

        $sql = "SELECT * FROM data WHERE id='$id' or name='$name'";
        $q = mysql_query($sql);
        if(mysql_fetch_array($q)){
            /**
            echo '<script>
                    alert("id or name already exists！");
                    location.href = "newgood.html";
                </script>';
            
            echo "already existss";
            */
            echo "<div>123</div>";
        }
        else{
            $sql = "INSERT INTO data(id,name,inPrice,salePrice,inNum,inTime,num) VALUES('{$id}', '{$name}', '{$inPrice}', '{$salePrice}', '{$inNum}', '{$mysqlTime}', '{$num}')";
            mysql_query($sql);
            mysql_close($con);
        /* 
            echo '<script>
                    alert("success insert");
                    location.href = "newgood.html";
                </script>';
        
            echo "success insertd";
        */
            echo "<div>777</div>";
        }
    }
?>
