#!/usr/bin/env perl -w

use v5.30;

# chomp($_ = <STDIN>);
# if (/yes/i) {
#     say;
# }

# $_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast night.\n";
# $_ = "   0 2309203.9 023# \t\n2908320";
# if (/Barney.*Fred/) {
#     say;
# }
# if (/
#     -?          # added comment
#     [0-9]+
#     \.?
#     [0-9]*
#     [#]         # the sharp
#     /x
# ) 
# {
#     say;
# }

# $_ = "BarNEY\n.\n......FREDFREDDDDD\n\n\n.\n..\n**\n*Fred\n";
# if (/barney.*fred/is) {
#     say;
# }

# $_ = "BarN         EY \n .\n .. . ...FREDFREDDDDD\n\n\n.\n..\n**\n*Fred\n";
# if (m{
#         barney
#         .*
#         fred # so annoying
#     }six) {
#     say;
# }

# $_ = <STDIN>;
#
# my $OE = chr(0xBC);
# if (/$OE/i) {
#     say;
# }

# $_ = 'This is a wilma line
#     barney is on another line
#     but this ends in fred
#         and a final dino line';

# say;

# my $some_other = "I dream of betty rubble.";
#
# if ($some_other =~ /\brub/) {
#     say $some_other;
# }

# say "Do you like Perl?";
#
# my $like_perl = (<STDIN> =~ /\byes\b/i);
#
# if ($like_perl) {
#     say $like_perl;
# }

# $_ = "Hello there, neighbor";

# if (/\s([a-zA-Z]+),/) {
#     say $1;
# }
# if (/(\S+) (\S+), (\S+)/) {
#     say "$1 $2 $3";
# }

# $_ = "brontosaurus BBQ steak";
# if (/(bronto)?saurus (steak|burger)/) {
#     say "$2";
# }

# if (/(?:branto)?saurus (steak|burger)/) {
#     say $1;
# }

# $_ = "brontosaurus BBQ steak";
# if (/(?:bronto)?saurus (?:BBQ )?(:?steak|burger)/n) {
#     say $1;
# }

# my $names = 'Fred or Barney';
#
# if ($names =~m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/) {
#     say "$+{name1} and $+{name2}";
# }

# my $names = 'Fred Flinstone and Fred Flinstone';

# if ($names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/) {
#     say "I saw $+{last_name}";
# }

# if ($names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/) {
#     say "I saw $+{last_name}";
# }

# if ($names =~ m/(?P<last_name>\w+) and \w+ (?P=last_name)/) {
#     say "I saw $+{last_name}";
# }

# if ("Hello there, nighbor" =~ /\s(\w+),/) {
#     say "matched '$&'.";
# }

# if ("Hello there, nighbor" =~ /\s(\w+),/) {
#     say "matched ($`)($&)($')";
# }

# if ("Hello there, neigbor" =~ /\s(\w+),/p) {
#     say "${^MATCH}";
# }

if ("Hello there, neigbor" =~ /\s(\w+),/p) {
    say "${^PREMATCH}${^MATCH}${^POSTMATCH}";
}
