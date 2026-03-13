#!/usr/bin/perl

use strict;

sub total {
	my $sum;
	foreach (@_) { $sum += $_ }
	$sum
}

my @numbers = ( 1..1000 );
my $sum = total(@numbers);
print "Sum of numbers from 1 to 1000 equals $sum.\n"; 
