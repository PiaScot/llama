#!/user/bin/env perl -w

use v5.30;
use warnings;
use diagnostics;

# my $stuff = "Howdy world!";
# my $where = index($stuff, "wor");
# my $where1 = index($stuff, "w");
# say $where1;
# my $where2 = index($stuff, "w", $where1 + 1);
# say $where2;
# my $where3 = index($stuff, "w", $where2 + 1);
# say $where3;

# my $stuff = "Howday world";
# my @where = ();
# my $where = -1;
# while (1) {
#     $where = index($stuff, 'w', $where + 1);
#     last if $where == -1;
#     push @where, $where;
# }
#
# say "@where";

# my $last_slash = rindex("/etc/passwd", "/");
# say $last_slash;

# my $fred = "Yabba dabba doo!";
# my @where = ();
# my $where = length $fred;
# while () {
#     $where = rindex($fred, "abba", $where - 1);
#     last if $where == -1;
#     push @where, $where;
# }
#
# say "@where";

# my $mineral = substr("Fred J. Flinstone", 8, 5);
# my $rock = substr "Fred J. Flinstone", 13, 1000;
#
# say $mineral;
# say $rock;

# my $string = "Hello, world!";
# substr($string, 0, 5) = "Goodbye";
# say $string;
#
# substr($string, -20) =~ s/cruel/barney/g;

# my $money = sprintf "%.2f", 2.499997;
# say $money;

# sub big_money {
#     my $number = sprintf "%.2f", shift @_;
#     1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
#     $number =~ s/^(-?)/$1\$/;
#     $number;
# }
#
# # my @list = qw/30.245 -234.34 093 -12. .034 /;
# #
# my $res = &big_money(1212121212124.482938290389023);
# say $res;

# sub by_number {
#     if ($a < $b) { -1 } elsif ($a > $b) { 1 } else { 0 }
# }
#
# my @list = (12, 34, 56, 4, 25, -2, 45, 3.45);
# my @result = sort by_number @list;
# say "@result";
# my $r = by_number(3, 4);
# say $r;

# <=> is called as spaceship operator

# sub by_number { $a <=> $b }

# my @any_strings = qw/Hello conchat Hel lasd lawi al la lakjs/;
# sub by_code_point { $a cmp $b }
# sub by_case_insentive { "\L$a" cmp "\L$b" }
# my @strings = sort by_case_insentive @any_strings;
# say "@strings";

# use Unicode::Normalize;
#
# sub equivalenst { NFKD($a) cmp NFKD($b) }

# my @some_numbers = (12, 30, -1, 0);
# my @numbers = sort { $a <=> $b } @some_numbers;
# say "@numbers";

# my %score = ("barney" => 195, "fred" => 205, "dino" => 30);
# sub by_scores { $score{$a} <=> $score{$b} }
# my @winners = sort by_scores keys %score;
# # my @re = keys %score;
# say "@winners";

my %score = (
    "barney" => 195, "fred" => 205,
    "barney" => 195, "bamm-bamm" => 195,
    "dino" => 30, "bamm-bamm" => 195,
);

my @winners = sort by_score_and_name keys %score;

sub by_score_and_name {
    $score{$b} <=> $score{$a}
        or
    $a cmp $b
}

say "@winners";

