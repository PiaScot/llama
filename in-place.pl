#!/user/bin/env perl -w

use v5.30;
use warnings;
use diagnostics;

chomp(my $date = `date`);
$^I = ".bak";

while(<>) {
    s/\AAuthor:.*/Author: Randal L. Scwartz/;
    s/\APhone:.*\n//;
    s/\ADate:.*/Date: $date/;
    print;
}
