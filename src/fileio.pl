#!/usr/bin/perl
use strict;
use warnings;

open(my $in, "<", "fileio.pl") or die "Can't open fileio.pl";

my @lines = <$in>;
print @lines+0, "\n";

my $n = 0;
# reset to head
seek($in, 0, 0);
while (<$in>) {
  $n++;
}

print "lines=".$n."\n";

close $in or die "$in: $!";
