<?php
    session_start();
    //if php version is less than 5.3 use session_register else comment that line
    session_register('pageviewcount');
    if(!isset($_SESSION["pageviewcount"]))
    {
        $_SESSION["pageviewcount"]=0;
    }
    else
    {
        $_SESSION["pageviewcount"]++;
    }
    print "<center><b>Page View Count = ";
    print "$_SESSION[pageviewcount]</b></center>";
?>