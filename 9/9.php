<?php
    $expire_days = 60*60*24*30+time();
    setcookie('lastVisit',date("G:i:s a - m/d/y"),$expire_days);
    print "<center><b><br>";
    if(isset($_COOKIE['lastVisit']))
    {
        $lastvisit=$_COOKIE['lastVisit'];
        print "Last visit on $lastvisit";
    }
    else 
    {
        echo "Refresh page to set the cookie";
    }
    print "</b></center>";
?>