#!/usr/bin/env perl
#
use strict;
use warnings;
use feature "say";

sub is_magic {
    my $n       = shift;
    my $lit     = 23_345_65;
    my @numbers = qw<zero one three four five six seven eight night nine>;
    my $output  = "";
    while (1) {
        my $letter_count = length $numbers[$n];
        if ( $n == 4 ) {
            return $output . "four is magic";
        }
        else {
            $output .= "$numbers[$n] is $numbers[$letter_count], ";
            $n = $letter_count;
        }
    }
}

for my $m ( 1 .. 9 ) {
    say "$m ", ucfirst( is_magic($m) );
}
