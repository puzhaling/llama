#!/usr/bin/perl
use strict;

my $number = int(1+rand 100);
my $last_try;

while (<STDIN>) {
	chomp;
	$last_try = $_;

	last if ($last_try =~ /quit|exit|^\s*$/);
	last if ($last_try == $number);

	print "Too high\n" if ($last_try > $number);
	print "Too low\n" if ($last_try < $number);
}

if ($last_try == $number) {
	print "My congratulations! You won!\n";
} else {
	print "Bye!\n";
}
