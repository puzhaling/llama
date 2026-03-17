#!/usr/bin/perl
use strict;
use v5.010;

my $number = int(1+rand 100);

my $last_try;
while (<STDIN>) {
	chomp;
	$last_try = $_;
	given ($last_try) {
		when (/quit|exit|^\s*$/) { last }
		when ($number) { last }
		when ($_ > $number) { print "Too high\n" }
		when ($_ < $number) { print "Too low\n" }
	}
}

if ($last_try == $number) {
	print "My congratulations! You won!\n";
} else {
	print "Bye!\n";
}
