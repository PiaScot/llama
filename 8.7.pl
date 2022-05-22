#!/usr/bin/env perl -w

use v5.30;

while(<>) {
    chomp;
    if (/a\b/) {
        say "BE:$` <$&> AF:$'";
    }
}
