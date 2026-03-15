#!/usr/bin/perl -w
use strict;

$^I = ".out";

while (<>) {
	s/fred(.*)wilma/Wilma${1}Fred/ig;
	print;
}
