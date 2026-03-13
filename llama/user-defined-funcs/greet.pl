#!/usr/bin/perl
use strict;
use v5.010;

sub greet {
	state $last_person = undef;
	print "Hi $_[0]! ";
	if(! defined $last_person ) {
		print "You are the first one here!\n"
		}
	else {
		print "$last_person is also here!\n"
		}
	$last_person = $_[0]
	}

greet( "Fred" );
greet( "Barney" );
