#!/usr/bin/perl
while (<>) {
	chomp;
	if (/hello world/) {
		print "Matched: |$`<$&>$'|\n";
	} else {
		print "No match: |$_|\n";
	}
}
