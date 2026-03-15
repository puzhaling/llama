#!/usr/bin/perl -w
use strict;

$^I = ".out";

my $copyright = "## Copyright (C) 20XX by Yours Truly";
while (<>) {
	s/(^#!.*)/${1}$copyright\n/s;
	print;
}
