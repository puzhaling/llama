#!/usr/bin/perl
use strict;

my %word_count = ();

print "Enter words (each on a separate line):\n";
chomp(my @words = <STDIN>);

foreach my $word (@words) {
	$word_count{$word} += 1
}

foreach my $word (sort keys %word_count) {
	print "Word $word was entered $word_count{$word} times.\n"
}
