#!/usr/bin/env perl

use v5.30;

sub total {
    my $sum = 0;
    # say @_;
    foreach (@_) {
        $sum += $_;
    }
    return $sum;
}

sub above_average {

    if (@_ == 0) { return () };
    my $ave = 0;
    my $sum = 0;
    my $count = 0;
    my @up_list;
    for (@_) {
        $sum += $_;
        $count++;
    }
    $ave = $sum / $count;

    for (@_) {
        if ($_ gt $ave) {
            push(@up_list, $_);
        }
    }

    @up_list;
}

my @arr = qw {1 3 5 7 9};
my @empty = ();
my @ret = &above_average(@arr);
say @ret;
# my $user_total = total(<STDIN>);
# my $one_to_hundred = total(1..100);
# say $one_to_hundred;
# say $user_total;
# say &total(@arr);

sub greet {
    state @name;
    print "Hi @_!";
    if (@name) {
        print " I've seen: ";
        foreach (@name) {
            print "$_ ";
        }
    } else {

        print " You are the first one here!";

    }
    say "";
    push(@name, @_[0]);
}

# sub greet {
#     state $last_person;
#
#     my $name = shift;
#
#     print "Hi $name! ";
#     if (defined $last_person) {
#         print "$last_person is also here!\n";
#     } else {
#         print "You are the first one here!\n";
#     }
#
#     $last_person = $name;
# }

&greet("Fred");
&greet("Barney");
&greet("Wilma");
&greet("Betty");

