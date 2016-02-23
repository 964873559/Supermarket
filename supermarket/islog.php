<?php
    if( !isset( $_SESSION['username'] )){
        echo "
            <script>
                location.href = 'index.html';
            </script>
            ";
    }


?>
