#!/usr/bin/env perl

# use strict;
# use warnings;
# use diagnostics;
# use v5.30;

# chomp(my $line = <STDIN>);
# if ($line eq "\n") {
#     say "That was just a blank line";
# } else {
#     say "That line of input was: $line";
# }

# chomp(my $ext = "\t\t\t\t\t\nlaskdjf\n\n");
# say $ext;

# chomp(my $nums = 4 * 32 + ".34");
# say $nums;
$n = 1;
while ($n < 10) {
    $sum += $n;
    $n += 2;
}
print "The total is $sum\n";

$string .= "more text\n";
print $string;

print $nothing;

$next_line = <STDIN>;
undef $next_line;
if (defined($next_line)) {
    print "The input was $next_line";
} else {
    print "No input available\n";
}
