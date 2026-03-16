#!/usr/bin/perl
use strict;
use File::Basename;
use File::Spec;

die "Usage: ./mv.pl <source> <dest>\n" if @ARGV != 2;

my ($source, $dest) = @ARGV;
if ( -d $dest ) {
	my $basename = basename $source;
	$dest = File::Spec->catfile($dest, $source);
}

my $success = rename "$source", "$dest";
die "cannot rename file '$source' to '$dest': $!" unless $success;
