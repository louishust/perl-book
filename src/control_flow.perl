#!/usr/bin/perl
use strict;
use warnings;


# if
my $condition1 = 1;
if ($condition1) {
  print "condition1=1", "\n";
}

print "condition1=1", "\n" if $condition1;
print "condition1=0", "\n" unless $condition1;

# unless
my $condition2 = 0;
unless ($condition2) {
  print "condition2=0", "\n";
}
print "condition2=1", "\n" if $condition2;
print "condition2=0", "\n" unless $condition2;

# while
my $condition3 = 1;
while ($condition3) {
  print "condition3=1", "\n";
  $condition3 = 0;
}

print "condition3=1", "\n"; $condition3=0 while $condition3;
print "condition3=1", "\n"; $condition3=0 while $condition3;

# util

my $condition4 = 0;
until ($condition4) {
  print "condition4=1", "\n";
  $condition4 = 1;
}

print "condition4=1", "\n"; $condition4=1 unless $condition4;

# for

my $i =0;
my $n =10;
for (;$i <= 4; $i++) {
  print "$i";
}
print "\n";

# foreach
my @a = (1, 2, 3);
foreach (@a) {
  print "This element is $_\n";
}

my %hash = ("apple", "red", "banana", "yellow");
foreach my $key (keys %hash) {
  print "The value of $key is $hash{$key}\n";
}


