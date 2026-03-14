#!/usr/bin/perl
while (<>) {
	chomp;
	if (/(?<word>\b\w*a\b)(?<up_to_five_next_chars>.{,5})/) {
		print "Matched: |$`<$&>$'|\n";
		print "'word' contains '$+{word}'\n";
		print "Next five characters are: '$+{up_to_five_next_chars}'\n";
	} else {
		print "No match: |$_|\n";
	}
}
