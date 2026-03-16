#!/usr/bin/perl
use strict;

die "Usage: ./ln.pl [-s] <refdest> <refname>\n" if @ARGV != 2 or @ARGV != 3;

my $refdest = shift @ARGV;
my $refname = shift @ARGV;

my $success = link "$refdest", "$refname";
die "cannot link '$refname' to '$refdest': $!" unless $success;
