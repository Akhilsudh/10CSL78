#!/usr/bin/perl

print"content-type:text/html\n\n";
open(IN,"<visit.txt");
$count = <IN>;
close(IN);
open(OUT,">visit.txt");
$count++;
print OUT $count;
close(OUT);
print "<html><body bgcolor=lightgreen><center><b>";
print "Total Number of Visitors to this page :$count";
print "</b></center></body></html>";
