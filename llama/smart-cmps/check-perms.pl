#!/usr/bin/perl
use strict;
use v5.010;

for( @ARGV ) {
	my @perms;
	when( -r )    { push @perms, "r"; continue } 
	when( ! -r _) { push @perms, "-"; continue }
	when( -w _ )  { push @perms, "w"; continue } 
	when( ! -w _) { push @perms, "-"; continue }
	when( -x _ )  { push @perms, "x"; continue } 
	when( ! -x _) { push @perms, "-"; continue }

	print "File '$_' permissions are ", @perms, "\n";
}
