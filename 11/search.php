<?php
    $name=$_GET["nam"];
    mysql_connect("localhost","sirmvit","cse");
    mysql_select_db("address");
    $res=mysql_query("select * from person_info where name='$name'");
    $len=mysql_num_rows($res);
    print "<html><body bgcolor=lightgreen><center>";
    if($len>0)
    {
        print "<b>SEARCH RESULTS<br>";
        print "<table border=1><tr><td>NAME</td><td>ADDRESS 1</td>";
        print "<td>ADDRESS 2</td><td>EMAIL</td></tr></b>";
        while($data=mysql_fetch_row($res))
        {
            print "<tr><td>$data[0]</td><td>$data[1]</td><td>$data[2]</td><td>$data[3]</td></tr>";
        }
        print "</table>";
    }
    else
    {
        print "NO ROWS FOUND";
    }
    print "</center></body></html>";
    mysql_close();
?>