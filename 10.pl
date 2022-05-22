#!/user/bin/env perl -w

use v5.30;
# use warnings;
# use diagnostics;

# my $fred = "_alsdjfa";
# unless ($fred =~ /\A[A-Z_]\w*\z/i) {
#     say "don't match";
# }
# my $l = length $fred;
# say $l if $l > 3;

# my $n = 3;
# while ($n < 10) {
#     print " ", ($n += 2);
# }
# print " ", ($n += 2)
# while $n < 10;

# my $dino = "--949.3";
# if ( ! defined $dino) {
#     say "The value is undef.";
# } elsif ($dino =~ /^-?\d+\.?$/) {
#     say "The value is an integer.";
# } elsif ($dino =~ /^-?\d*\.\d+$/) {
#     say "The value is a _simple_ floating-point number.";
# } elsif ($dino eq '') {
#     say "The value is the empty string.";
# } else {
#     say "The value is the string '$dino'.";
# }

# my @people = qw{ fred barney fred wilma dino barney fred pebbles };
# my %count;
# $count{$_}++ foreach @people;
#
# say $count{pebbles};

# my $m = 5;
# my $n = $m++;
# say $n;

# my @people = qw{ fred barney bamm-bamm wilma dino barney betty pebbles };
# my %seen;
#
# foreach (@people) {
#     say "I've seen you somewhere before, $_!" if $seen{$_}++;
# }

# for ($_ = "bedrock"; s/(.)//;) {
#     say "$1";
# }

# while(<STDIN>) {
#     if(/__END__/) {
#         last;
#     } elsif (/fred/) {
#         print;
#     }
# }

# my $total = 0;
# my $valid = 0;
# my %count;
#
# while(<>) {
#     foreach(split) {
#         $total++;
#         next if /\W/;
#         $valid++;
#         $count{$_}++;
#     }
# }
#
# say "total things = $total, valid words = $valid";
# foreach my $word (sort keys %count) {
#     say "$word was seen $count{$word} time.";
# }

# my @words = qw{ fred barney pebbles dino wilma betty };
# my $errors = 0;
#
# foreach (@words) {
#     print "Type the word '$_':";
#     chomp(my $try = <STDIN>);
#     if ($try ne $_) {
#         say "Sorry - That's not right.\n";
#         $errors++;
#         redo;
#     }
# }
#
# say "You've completed the test. with $errors erorr.";

# foreach (1..10) {
#     say "Iterator number $_.";
#     say "Please choose: last, next, redo, or non of the aboce?";
#     chomp(my $choice = <STDIN>);
#     say '';
#     last if $choice =~ /last/i;
#     next if $choice =~ /next/i;
#     redo if $choice =~ /redo/i;
#     say "That wasn't any of the choices... onward!";
# }
#
# say "That's all, folks!";

# LINE: while (<>) {
#     WORD: foreach (split) {
#         last LINE if /__END__/;
#         last WORD if /EOF/;
#         say "next";
#     }
# }

# my $width = 20;
# my $size =
# ($width < 10) ? "small" :
# ($width < 20) ? "medium" :
# ($width < 50) ? "large" :
# "extra-large";
#
# say $size;

# my %last_name;
# my $someone;
# my $lname = $last_name{$someone} || '(No last name)';
# say $lname;

# my %last_name;
# my $someone;
# my $last_name = $last_name{$someone} // '(No last name)';
# say $last_name

# my $Verbose = $ENV{TERM} // 1;
# say "I can talk to you!" if $Verbose;

# foreach my $try ( 0, undef, '0', 1, 25 ) {
#     print "Trying [$try] ---> ";
#     my $value = $try // 'default';
#     say "\tgot [$value]";
# }
# my $name;
# printf "%s", $name // 'la';

