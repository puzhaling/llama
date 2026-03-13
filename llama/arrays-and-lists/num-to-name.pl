#!/usr/bin/perl
@list = qw[ fred betty barney dino wilma pebbles bamm-bamm ];
chomp(@nums = <STDIN>);
foreach (@nums) {
	print $list[$_-1], "\n";
}
