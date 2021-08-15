<?php

session_start();

session_unset();
session_destroy();

setcookie('type','',time()-86400);
setcookie('usenam','',time()-86400);
setcookie('pass','',time()-86400);

header("Location: login.php");

?>
