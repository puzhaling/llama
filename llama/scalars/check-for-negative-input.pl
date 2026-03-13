#!/usr/bin/perl

$radius = <STDIN>;
if ($radius lt 0) {
	print "0\n";
} else {
	print 2 * 3.141592654 * $radius, "\n";
}
