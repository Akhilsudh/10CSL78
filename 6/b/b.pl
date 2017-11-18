#!/usr/bin/perl
print "Content-type:text/html\n\n";
open(IN,"<visit.txt");
$count=<IN>;
close(IN);
open(OUT,">visit.txt");
$count++;
print OUT $count;
close(OUT);
print "<html><body bgcolor=lightgreen><center><b>";
print "Number of Vistors to this page is::$count";
print "</b></center></body></html>";