#!/usr/bin/perl
use DBI;
use CGI;
print "Content-type:text/html\n\n";
$ab=new CGI;
$nam=$ab->param("nam");
$age=$ab->param("age");
$con=DBI->connect("dbi:mysql:web","sirmvit","cse");
$res=$con->prepare("insert into age_info values('$nam','$age')");
$res->execute();
$res1=$con->prepare("select * from age_info");
$res1->execute();
$len=$res1->rows;
print "<html><body bgcolor=lightgreen><center>";
if($len <= 0) {
    print "No row found";
} else {
    print "The database table content shown below<br><br><table border=1>";
    print "<tr><th>NAME</th><th>AGE</th></tr>";
    while(@data=$res1->fetchrow_array()) {
        print "<tr><td>$data[0]</td><td>$data[1]</td></tr>";
    }
    print "</table>";
}
print "</center></body></html>"
