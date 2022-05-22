#!/usr/bin/env perl -w

use v5.30;

sub one {
    my $filename = './kq';
    open my $fh, '<', $filename
        or die "Can't open '$filename': $!";
    chomp(my @strings = <$fh>);
    while (1) {
        print 'Please enter a pattern: ';
        chomp(my $pattern = <STDIN>);
        last if $pattern =~ /\A\s*\Z/;
        my @matches = eval {
            grep /$pattern/, @strings;
        };
        if ($@) {
            print "Error: $@";
        } else {
            my $count = @matches;
            print "There were $count matching strings:\n",
            map "$_\n", @matches;
        }
        print "\n";
    }
}

&one;
