#!/usr/bin/perl -w
use strict;

my ($str, $findme) = ("This is a test.", "t");

my $where = index($str, $findme);
while ($where != -1) {
	print $where, "\n";
	$where = index $str, $findme, $where + 1;
}
