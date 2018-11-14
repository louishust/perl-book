#!/usr/bin/perl
use strict;
use warnings;

# Scalars

my $animal = "camel";
my $answer = 42;

print $animal;
print "The animal is $animal\n";
print "The square of $answer is ", $answer * $answer, "\n";

$_ = "default variable\n";
print;


# Arrays

my @animals = ("camel", "llama", "owl");
my @numbers = (23, 42, 69);
my @mixed   = ("camel", 42, 1.23);

print $animals[0], "\n";              # prints "camel"
print $animals[1], "\n";              # prints "llama"

print $mixed[$#mixed], "\n";

print @animals, "\n";
print @animals+0 , "\n";
if (@animals == 3) { print "number of animals=3\n";}

print @animals[0,1], "\n";                 # gives ("camel", "llama");
print @animals[1,0], "\n";                 # gives ("camel", "llama");
print @animals[0..2], "\n";                # gives ("camel", "llama", "owl");
print @animals[1..$#animals], "\n";        # gives all except the first element

my @sorted    = sort @animals;
my @backwards = reverse @numbers;

print @ARGV;    #the command line arguments to your script


# Hash

my %fruit_color = (
    apple  => "red",
    banana => "yellow",
);

print $fruit_color{"apple"}, "\n";

my @fruits = keys %fruit_color;
my @colors = values %fruit_color;

print @fruits, "\n";
print @colors, "\n";

print %ENV, "\n";

# Reference

my $arrayref = [1, 2, ['a', 'b', 'c']];
print @$arrayref[2], "\n";

my $hashref = {
   'Adam'  => 'Eve',
   'Clyde' => 'Bonnie',
};
print $hashref->{'Adam'}, "\n";

my $mixref = {
   'Adam'  => [1, 2],
   'Clyde' => 'Bonnie',
};
print $mixref->{'Adam'}[1], "\n";


# Scope

my $x = "foo";
my $some_condition = 1;
if ($some_condition) {
    my $y = "bar";
    print $x;           # prints "foo"
    print $y;           # prints "bar"
}
print $x;               # prints "foo"
