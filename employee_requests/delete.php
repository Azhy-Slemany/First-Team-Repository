<?php

require_once("config.php");
   $id=$_GET['id'];
   $delete_query = "DELETE FROM `info` WHERE id='$id'";
   $data = mysqli_query($conn, $delete_query);
       if($data){
            header("location:index.php");
        }else{
            echo"something wrong is happen!";
        }
?>