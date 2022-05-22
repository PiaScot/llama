#!/usr/bin/env perl

# $number = 2.71828;
# $fred[0] = "yabba";
# $fred[1] = "dabba";
# $fred[2] = "doo";
# $fred[11] = "extend";

# print $fred[11];

# if ($fred[4] eq undef) {
#     print "undef";
# } else {
#     print "exist";
# }

# print $fred[$number];

# print $fred[-0 + 2];

# $ls = (1,2,3);
# $ot = ();
# print $ot;

# @ls = (1..2);
# print ls;

# print qw(fred barney betty wilama dino) . "\n";

# print qw <       fred barney > . "\n";

($fred, $barney, $dino) = ("flinstone", "rubble", undef);
# print $fred . "\n";
# print $dino . "\n";

($fred, $dino) = ($dino, $fred);

# print $fred . "\n";
# print $dino . "\n";

@rocks = qw/ bedrock slate lava /;
@tiny = ();
@giant = 1..1e5;
@stuff = (@giant, undef, @giant);
$dino = "grantite";
@quarry = (@rocks, "crushed rock", @tiny, $dino);

# print @quarry;
@array = 5..9;
$fred = pop(@array);
$barnery = pop @array;
pop @array;

push @array, 1.2..3.4;
@others = qw / hello world in some stings /;
push @array, @others;
# push pop shift unshift
# @arr = qw( pebbles dino fred barnery betty );
# @removed = splice @arr, 1, 2, qw(wilma);
# print "@removed \n";
# print "@arr \n";

# @fred = qw(hello dolly);
# $y = 2;
# $x = "this is $fred[1]'s place";
# print "$x\n";
# @fred = qw(eating rocks is wrong);
# $fred = "right";
# print "This is $fred[3]\n";
# print "This is ${fred}[3]\n";
# print "this is $fred"."[3]\n";
# print "this is $fred\[3]\n";

# foreach $rock (qw /bedrock slate lava /) {
#     print "One rock is $rock.\n";
# }

# $rock = 'escaped strings';
# @rocks = qw/ bedrock slate lava /;
# foreach $rock (@rocks) {
#     $rock = "\t$rock";
#     $rock .= "\n";
# }

# # print "The rocks are:\n", @rocks;
# print "$rock\n";

# $rock = 'shale';
# @rocks = qw/ bedrock slate lava /;
# foreach $rock (@rocks) {
#     ...
# }

# @arr = qw/1 2 3 4 5/;
# print "@arr\n";
# pop @arr;
# print "@arr\n";
# foreach (1..10) {
#     print;
# }


# sort(chomp($line = <STDIN>));
# print $line;
# @rocks = qw/ bedrock slate rubble grantie /;
# @sorted = sort(@rocks);
# print "@sorted\n";

# require;
# @rocks = qw/ bedrock slate rubble granite /;
# while (($idx, $val) = each @rocks) {
#     print "$idx: $val\n";
# }
#
$n = 4;
print "$n\n";
$n = sort($n);
if ($n eq undef) {
    print "undef\n";
}
# print "$n\n";
#
@backwards = reverse qw/ yabba dabba doo /;
$backwards = reverse qw/ yabba dadda doo /;

print "@backwards\n";
print "$backwards\n";

@a = undef;
@b = ();

# if (@a eq @b) {
#     print "equal\n";
# }
# @rocks = qw / talc quartz jade obsidan /;
# print "I have" . scalar @rocks. "\n";
sort(chomp(my @lines = <STDIN>));
print @lines;
