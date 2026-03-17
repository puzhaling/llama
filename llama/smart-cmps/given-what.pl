#!/usr/bin/perl
use strict;
use v5.010;

print "What is your number? ";
chomp( my $number = <STDIN> );

my @phrase;
given( $number ) {
	when( not $number % 3) { push @phrase, "Fizz"; continue }
	when( not $number % 5) { push @phrase, "Bin"; continue }
	when( not $number % 7) { push @phrase, "Sausage" }
}

print "@phrase\n";
