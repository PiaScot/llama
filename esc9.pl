#!/usr/bin/env perl -w

use v5.30;

# $_ = "He's out bowling with Barney tonight";
# s/Barney/Fred/;
# s/with (\w+)/against $1's team/;

# $_ = "green scaly dinsaur";
# s/\A/huge, /;
# say $_;
# s/,.*een//;
# say $_;
# s/green/red/;
# say $_;
# s/\w+$/($`!)$&/;
# say $_;

# $_ = "fred flinstone";
# if (s/a/wilma/) {
#     say "successful";
# }

# $_ = "home sweet home";
# s/home/cave/g;
# say;

# $_ = "      Input data\t may have    extra    whitaspace.   ";
# # s/\s+/ /g;
# s/\A\s+//g;
# s/\s+\z//;
# s/\A\s+|\s+\z//g;
# say;

# $_ = "fred wilma fred";
# s{fred}{barney};
# say;

# $_ = "wilma WiLMa WILMa wilMa";
# s#wilma#Wilma#gi;
# say;

# my $file_name =~ s#\A.*/##s;
# say;

# my $original = 'Fred ate 1 rib';
# (my $copy = $original) =~ s/\d+ ribs?/10 ribs/;
# my $copy = $original =~ s/\d+ ribs?/10 ribs/r;
# say $copy;

# $_ = "I saw Barney with Fred.";
# s/(fred|barney)/\U$1/gi;
# s/(\w+) with (\w+)/\U$2\E with $1/i;
# s/(fred|barney)/\L$1/gi;
# s/(fred|barney)/\u$1/ig;
# s/(fred|barney)/\u\L$1/ig;
# say $_;
# my $name = "original";
# say "Hello, \L\u$name\E, would you like to play a game";

# my $start = "Fred";
# my $uncapp = lc($start);
# say $uncapp;
# my $upperrd = uc($uncapp);
# say $upperrd;
# my $lowerd = lc($upperrd);
# say $lowerd;
# my $capped = ucfirst($lowerd);
# say $capped;
# my $folded = fc($capped);
# say $folded;

# $_ = "((Fred and wilma) two peoples are) is finished";
# if (s/\Q((Fred/Fred/) {
#     say "Replaced name";
# }
# say;

# my $prefix = "()()()()(())((((())))))))))))";
# $_ = "{$prefix}(Fred)test";
# if (s/\Q$prefix\E(Fred)/$1/) {
#     say "Replaced $1";
# }

# my @fields = split /:/, "abc:def:::g:h";
# my @fields = split /:/, ":::a:b:c:::::", -1;
# print "@fields";

# my $some_input = "This is   a \t  \t test\n.";
# my @args = split /\s+/, $some_input;
# print "@args";

# my $result = join $glue, @pieces;

# my $y =  join "foo", "bar";
# say $y;
# my @empty;
# my $empty = join "baz", @empty;
# say $empty;

# my $x = "4:6:8:10:12";
# my @values = split /:/, $x;
# my $z = join "-", @values;
# say $z;

# $_ = "Hello there, neighbor";
# my ($first, $second, $third) = /(\S+) (\S+), (\S+)/;
# say "$second is my $third";

# my $text = "Fred dropped a 5 ton grantie block on Mr. Slate";
# my @words = ($text =~ /([a-z]+)/ig);
# say "Result: @words";

# my $text = "Barney Rubble Fred Flinstone Wilma Flinstone";
# my %last_name = ($text =~ /(\w+)\s+(\w+)/g);
# say %last_name;

# my $text = '<b>Fred</b> and <b>Barney</b>';
# my $match_count = $text =~ s|<b>(.*)</b>|<b>\U$1\E</b>|g;
# say "$match_count: $text";

# my $text = '<b>Fred</b> and <b>Barney</b>';
# my $match_count = $text =~ s|<b>(.*?)</b>|\U$1|g;
# say "$match_count: $text";

# my $strings = "this doesn''''''''''t capitalize correctly";
# $strings =~ s/\b(\w)/\U$1/g;
# say "$strings";

# my $strings = "this doesn't capitalize correctly.";
# $strings =~ s/\b{wb}(\w)/\U$1/g;
# say $strings;

# my $strings = ".....................................................end.";
# my $count = $strings =~ s/(.{50,75}\b{lb})/$1\n/g;
# say "$count, $strings";

# $_ = "I'm much better\nthan Barney is \nat bowling, \nWilma.\n";
# say "Found 'wilma' at start of line" if /^wilma\b/im;

my $filename = "esc9.pl";
open FILE, $filename
    or die "Can't open '$filename': $!";
my $lines = join '', <FILE>;
$lines =~ s/^/$filename: /gm;
