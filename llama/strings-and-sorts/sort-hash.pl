#!/usr/bin/perl -w
use strict;

my %last_name = qw{
	fred flintstone Wilma Flintstone Barney Rubble
	betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @sorted_keys = sort {
	"\L$last_name{$a}" cmp "\L$last_name{$b}"
		or
	"\L$a" cmp "\L$b"
} keys %last_name;

for (@sorted_keys) {
	print "$_ => $last_name{$_}\n";
}
