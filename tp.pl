#!/usr/bin/env perl -w

use v5.30;

use Time::Piece;

my $t = localtime;
print "Time is $t\n",
print "Year is ", $t->year, "\n";
