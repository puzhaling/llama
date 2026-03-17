#!/usr/bin/perl
use strict;
use v5.010;

sub divisors {
	my $number = shift;

	my @divisors = ();
	for my $divisor ( 2 .. $number/2 ) {
		push @divisors, $divisor unless $_ % $divisor;
		}
	
	return @divisors;
}

for (@ARGV) {
	when (/\D/) { die "'$_' is not a number!" }
	when (0) { print "'$_' has no divisors\n" }
	when (1) { print "This is '1' and 1 is it's the only one divisor\n" }
	my @divisors = divisors $_;
	when (@divisors ~~ 2) { print "'$_' is even\n"; continue }
 	default { print "Divisors of $_ are (@divisors)\n" }
	}
