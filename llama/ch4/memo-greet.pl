#!/usr/bin/perl
use strict;
use v5.010;

sub greet {
	state @those_i_saw;
	my $newcomer = $_[0];
	print "Hi $newcomer! ";
	if(! @those_i_saw ) {
		print "You are the first one here!\n"
		}
	else {
		print "I've seen: @those_i_saw\n" 
		}
 	push(@those_i_saw, $newcomer)
	}

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
