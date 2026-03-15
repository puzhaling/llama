#!/usr/bin/perl -w
use strict;

my $what = "fred";

while (<>) {
	if (/($what){3}/) {
		print;
	}
}
