<?php
if(!defined('SITE_NAME'))
{
    require_once '../../config.php';
}
if(isset($_GET['giatri']))
{
    $_SESSION['language']=$_GET['giatri'];
    echo "<script>location.reload(true)</script>";

}
?>