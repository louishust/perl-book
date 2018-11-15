#!/usr/bin/perl
use strict;
use warnings;

sub square {
    my $num = shift;
    my $result = $num * $num;
    return $result;
}
my $sq = square(8);
print $sq."\n";

sub mul {
    my($num1,$num2) = @_;
    my $result = $num1 * $num2;
    return $result;
}
$sq = mul(4,4);
print $sq."\n";

sub mul2 {
    my $num1 = shift;
    my($num2,$num3) = @_;
    my $result = $num1 * $num2 * $num3;
    return $result;
}
$sq = mul2(4,4,4);
print $sq."\n";
