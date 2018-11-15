#!/usr/bin/perl

use lib 'lib';
use strict;
use warnings;

use Myfile;

my $file = Myfile->new("lib/Myfile.pm");
$file->open();
$file->print();
