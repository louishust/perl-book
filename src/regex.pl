#!/usr/bin/perl
use strict;
use warnings;

my $a= "abc";

if ($a =~ /b/) {
  print "$a contains b\n"
}

my $a1 = "foofoo";
my $a2 = "foofoo";
$a1 =~ s/foo/bar/;         # replaces foo with bar in $a
$a2 =~ s/foo/bar/g;        # replaces ALL INSTANCES of foo with bar
print "$a1\n";
print "$a2\n";


while (<>) {
    next if /^$/;
    print;
}
