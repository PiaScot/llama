#!/usr/bin/env perl

use v5.30;
use feature qw(signatures);
no warnings qw(experimental::signatures);
use strict;
# use warnings;
# use diagnostics;

# my $n = 1;
# my $ot = 2;
# my $rt = 4;
#
# sub marine {
#     $n += 1;
#     print "Hello number $n\n";
#     $ot + $rt;
#     print "end\n";
# }
# my $betty = &marine;
# print "${&marine}\n";
# # &marine;
# # &marine;
# # &marine;
# # &marine;
# # &marine;

# sub max { print "@_\n"; if ($_[0] > $_[1]) { $_[0]; } else { $_[1]; } };
# sub max {
#     my($m, $n);
#     ($m, $n) = @_;
#     if ($m > $n) { $m } else { $n }
# }
#
# my $s = &max(10,11,22);
# print "$s\n";

# my @arry = (3, 5, 10, 4, 6);
#
# my $maximum = &max(@arry);
# my $some = 3;

# $b = 3;
# sub max {
#     my($max_so_far) = shift @_;
#     foreach (@_) {
#         if ($_ > $max_so_far) {
#             $max_so_far = $_;
#         }
#     }
#     $max_so_far
# }
#
# print "$maximum\n";
# print "@arry\n";

# my @names = qw/ fred barnery betty dino wilma pebbles bamm-bamm /;
# my $result = &which_element_is("dino", @names);
#
# sub which_element_is {
#     my ($what, @array) = @_;
#     print "$what, @array\n"; 
#     foreach (0..$#array) {
#         if ($what eq $array[$_]) {
#             return $_;
#         }
#     }
#     -1;
# }
# print 5..6;
# sub list_from_two_args {
#     if ($_[0] < $_[1]) {
#         $_[0]..$_[1];
#     } else {
#         reverse $_[1]..$_[0];
#     }
# }

# sub marine {
#     state $n = 0;
#     $n += 1;
#     print "$n\n";
# }
#
# &marine;
# &marine;
# &marine;
# &marine;
# &marine;
#

# sub running_sum {
#     state $sum = 0;
#     state @numbers = (1, 3, 6);
#
#     foreach my $number (@_) {
#         push @numbers, $number;
#         $sum += $number;
#     }
#
#     say "The sum of (@numbers) is $sum";
# }
#
# &running_sum(5,6);
# &running_sum(5,6);
# &running_sum(5,6);

# sub max($m, $n) {
#     if ($m gt $n) { $m } else { $n }
# }

# sub max($max_so_far, @rest) {
#     foreach(@rest) {
#         if ($_ gt $max_fo_far) {
#             $max_so_far = $_;
#         }
#     }
#     $max_so_far;
# }

sub max($max_so_far, @) {
    foreach(@_) {
        if ($_ > $max_so_far) {
            $max_so_far = $_;
        }
    }
    $max_so_far;
}

# print &max(10, 22, 44, 555);

sub list_from_fred_to_barney ($fred = 0, $barney = 7) {
    if ($fred < $barney) { $fred..$barney }
    else {reverse $barney..$fred }
}

my @defaults = list_from_fred_to_barney();
my @default_end = list_from_fred_to_barney(12);

say "@defaults";
say "@default_end";
