#!/usr/bin/perl
use strict;

die "No files to remove\n" unless @ARGV;

for my $rmme (@ARGV) {
	my $success = unlink "$rmme"; 
	warn "cannot delete file $rmme: $!" unless $success;
}
