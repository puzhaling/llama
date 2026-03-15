#!/usr/bin/perl -w
use strict;

$^I = ".out";

while (<>) {
	s/fred/Larry/ig;
	print;
}
