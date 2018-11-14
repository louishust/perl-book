#!/usr/bin/perl
use strict;
use warnings;

sub square {
    my $num = shift;
    my $result = $num * $num;
    return $result;
}

my $sq = square(8);
print $sq;
