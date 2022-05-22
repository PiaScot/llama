#!/user/bin/env perl -w

use v5.30;
use warnings;
use diagnostics;

foreach 
# foreach (@ARGV) {
#     say;
# }

# sub by_numbers { $a <=> $b }
# my @res = sort by_numbers @ARGV;
# say "@res";

my @numbers;
push @numbers, split while <>;
foreach (sort { $a <=> $b } @numbers) {
  printf "%20g\n", $_;
}

User::pwent;
