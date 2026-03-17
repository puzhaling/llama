#!/usr/bin/perl -w
use strict;

chomp(my @numbers = sort { $a <=> $b } <STDIN>);


my $maxlen = 0;
for (@numbers) {
	$maxlen = $maxlen < length ? length : $maxlen;
}

for (@numbers) {
	printf "%${maxlen}g\n", $_;
}
