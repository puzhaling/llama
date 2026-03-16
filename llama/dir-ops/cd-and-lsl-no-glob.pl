#!/usr/bin/perl
use strict;

print "Enter new current working directory: ";
chomp(my $newcwd = <STDIN>);

if ($newcwd =~ /\s+/) {
	chdir or die "cannot chdir to your home directory: $!";
} else {
	chdir $newcwd or die "cannot chdir to $newcwd: $!";
}
print "Current working directory was successfully changed!\n";

opendir DH, "." or die "cannot open current working directory: $!";
for my $file (sort readdir DH) {
	print "$file\n";
}
