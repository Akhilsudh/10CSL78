#!/usr/bin/perl

use CGI;
print "content-type:text/html\n\n";
$cgi = new CGI;
$usr = $cgi -> param("nam");
@a=("Hi","Ola","Namaste","Vanakkam");
$greet = rand(4);
print "<html><body bgcolor=lightgreen><center><b>";
print "Hi $usr your greeting message is : <br>$a[$greet]";
print "</b></center></body></html>";
