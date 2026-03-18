#!/usr/bin/perl
use strict;

chdir;

while (1) {
	print "Enter a regex: ";
	chomp(my $regex = <STDIN>);
	last unless defined $regex && length $regex;

	print map { "    $_\n" } grep { eval { /$regex/ } }
		<.* *>
	}
