#!/usr/bin/perl
use strict;

# use ternary operator if  vvvv is unavailable 
my $VERBOSE = %ENV{VERBOSE} // 0;

my $number = int(1+rand 100);
print "Guessed number: $number\n"	if $VERBOSE;

my $last_try;

while (<STDIN>) {
	chomp;
	$last_try = $_;

	if ($VERBOSE) {
		print "Guessed number: $number (You entered $last_try)\n";
	}
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
