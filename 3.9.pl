#!/usr/bin/env perl

use strict;
use warnings;

# chomp(my @lines = <STDIN>);
# my @lines = <STDIN>;
# print reverse @lines;
# print reverse <STDIN>;

# my @human_list = qw/fred betty barnery dino wilma pebble bamm-bamm/;
# chomp(my @input = <STDIN>);
#
# while (@input) {
#     my $idx = shift(@input);
#     if ($idx > @human_list) {
#         print "hello?\n"
#     } else{
#         print "$human_list[$idx]\n";
#     }
# }

# my @names = qw/fred betty barnery dino wilma pebble bamm-bamm/;
# chomp(my @numbers = <STDIN>);
# foreach (@numbers) {
#     print "$names[$_ - 1]\n";
# }

# chomp(my @input_lines = <STDIN>);
# foreach my $name (@input_lines) {
#     $name .= ", ";
# }
# print sort(@input_lines);
#
print sort <STDIN>;
