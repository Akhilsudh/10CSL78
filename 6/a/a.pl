#!/usr/bin/perl
print "Content-type:text/html\n\n";
use CGI;
$cgi=new CGI;
$cmd=$cgi->param("nam");
@a=("hi","hello","welcome","hola!");
$greet = rand(4);
print "<html><body bgcolor=lightgreen><center><b>";
print "$cmd your greeting message is:<br>$a[$greet]";
print "</b></center></body></html>";