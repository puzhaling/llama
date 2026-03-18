#!/usr/bin/perl
use strict;

print map { "    $_\n" } grep { -s $_ < 1000 } @ARGV;
