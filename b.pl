#!/usr/bin/env perl

use utf8;
# use warnings;
# use diagnostics;

use v5.30;

# print "\Utest\E\Qmaybe\n insert slash with before each words\E\n";
# print "Hello" x 3.8 . ' ' . "world\n";
#
# print "12.3" * "33.4" . "\n";
# print "fred123" * "fred4";
# print "1fred" * "23" . "\n";

# my $some = "44";
# my $a    = oct("0b$bits");
# say "ans", hex(10);
#
# print "hwllo $fred";
my $what = "brontosaurus steak";
my $n = 3;
# say "fred ate $n $whats";
# say "fred ate $n ${what}s";
#
# say chr(0x05D0);
# say chr(0xffff);
#
# say "1" . 4 * "34" + 1;
#
# say 35 != 30 + 5;

my $name = 'fred';
my $is_bigger = $name gt 'something strings';
if ($is_bigger) {
    say "'$name' comes after 'fred' in sorted order";
} else {
    say "false branch";
}

my $not_stored_val;
if ($not_stored_val) {
    say "-1 is treated as true state in perl";
} else {
    say "nothing";
}
