#!/usr/bin/perl
use strict;

sub calc_mean {
	my $sum;
	foreach (@_) { $sum += $_ }
	$sum / @_
	}

sub above_average {
	my ($mean, $above) = (calc_mean(@_), 0);
	foreach (@_) {
		if ($mean < $_) { $above += 1 }
		}
	$above
	}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
