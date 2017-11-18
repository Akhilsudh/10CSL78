#!/usr/bin/perl

print "content-type:text/html\n\n";
print "<html><head><title>Digital Clock</title>";
print "<META HTTP-EQUIV=refresh content=0;";
print "URL=http://localhost/cgi-bin/7.pl>";
($s,$m,$h) = localtime(time);
print "</head><body bgcolor=lightgreen><center><b>";
print "DIGITAL CLOCK IS SHOWN BELOW :<br><br>";
print"$h:$m:$s</b></center></body></html>";