<?php
    $name=$_GET["nam"];
    $addr1=$_GET["add1"];
    $addr2=$_GET["add2"];
    $email=$_GET["email"];
    mysql_connect("localhost","sirmvit","cse");
    mysql_select_db("address");
    mysql_query("insert into person_info values('$name','$addr1','$addr2','$email')");
    $res=mysql_query("select * from person_info");
    $len=mysql_num_rows($res);
    print "<html><body bgcolor=lightgreen><center>";
    if($len>0)
    {
        print "<b>Database Content<br>";
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