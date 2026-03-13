#!/usr/bin/perl

use strict;

my $ruler = "123456789" . "0123456789" x 4;

print "Enter lines to be printed:\n";
my @lines = <STDIN>;
chomp(@lines);

print $ruler . "\n"; 
my $format = "%20s\n";
foreach (@lines) { printf $format, $_ }
