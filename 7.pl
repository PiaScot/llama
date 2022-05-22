#!/usr/bin/env perl -w

use v5.30;

# $_ = "yabba dabba doo";
# if (/abba/) {
#     say "It matched";
# }
# my $pattern = "(";
# if (/my $pattern/) {
#     say "matched";
# }

# my $PATTERN_GOES_HERE = "is";
# while(<STDIN>) {
#     chomp;
#     if (/$PATTERN_GOES_HERE/) {
#         say "\tMatches";
#     } else {
#         say "\t Doesn't match";
#     }
# }

# while(<<>>) {
#     chomp;
#     if (/$ARGV[0]/) {
#         say "\tMatches";
#     } else {
#         say "\tDoesn't match";
#     }
# }

# $_ = "yabba dabba doo.\n";
# if (/doo./) {
#     say "It matched";
# }

# $_ = "yabba dabba doo.\n";
# if (/doo\N/) {
#     say "It matched";
# }

# $_ = "yabbbbbbba dabbbbba doo.";
# if (/ab{3,}a/) {
#     say "matched";
# }

# $_ = "abba";
# if (/(.)\1/) {
#     say "matched";
# }
# $_ = "yabba dabba doo";
# $_ = "yabba dcbba doo";
# if (/y(....) d\1/) {
#     say" matched";
# }

# abb
# baa
# $_ = "yabba yabbbaa doo";
# if (/y(.)(.)(.)\3\2\1/) {
#     say "matched";
# }
# $_ = "yabba dabba doo ab";
# if (/(.)(.)\1\2/) {
#     say "matched";
# }

# $_ = "yabba dabba doo";
# if (/y((.)(.)\3\2) d\1/) {
#     say "matched";
# }

# $_ = "aa11";
# if (/(.)\g{1}11/) {
#     say $_;
#     say "matched";
# }

# $_ = "fred  \t \t  barney";
# if (/fred( +|\t+)barney/) {
#     say "matched";
# }

# $_ = "the untarakantara is 03-4853-3924 is phone number";
# if (/[-0-9]+/) {
#     say "matched";
# }

# while (<STDIN>) {
#     print if /\.png\Z/;
# }

