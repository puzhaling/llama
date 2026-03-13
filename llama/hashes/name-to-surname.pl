#!/usr/bin/perl -w
use strict;

my %surname = (
	"fred" => "flintstone",
	"barney" => "rubble",
	"wilma" => "flintstone",
);

print "Enter the name for which you want to\n",
      "find the corresponding surname: ";
chomp(my $name = <STDIN>);

if( exists $surname{$name} ) {
	print "The surname you're searching for is $surname{$name}.\n";
}
else {
	print "There is no such name.\n";
}
