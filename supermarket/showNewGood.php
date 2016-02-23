<?php
    header("Content-type:text/html; charset=UTF-8");
    function createDiv($id, $name, $inPrice, $salePrice, $num, $inTime){
        echo '
            <tr>
                <td>'.$id.'</td>
                <td>'.$name.'</td>
                <td>'.$inPrice.'</td>
                <td>'.$salePrice.'</td>
                <td>'.$num.'</td>
                <td>'.$inTime.'</td>
            </tr>
            ';
    }

?>
