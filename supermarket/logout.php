<?php
    session_start();

    if( isset($_SESSION['username']) ){
        $_SESSION = array();
        session_destroy();
    }
    echo "<script>
        location.href = 'index.html';
    </script>";

?>
