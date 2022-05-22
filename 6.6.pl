#!/usr/bin/env perl

use v5.30;

# sub pra_one {
#     my %peoples = (
#         'fred' => 'flinstone',
#         'barney' => 'rubble',
#         'wilma' => 'flinstone',
#     );
#
#     chomp(my $input = <>);

    # say $input;
    # my $name = $peoples{$input};
    # say $name;

#     say "$peoples{$input}";
#
# }

# sub pra_mytwo {
#     my %dict;
#     while(chomp(my $input = <<>>)) {
#         $dict{$input} += 1;
#
#         foreach my $key (keys %dict) {
#             say "$key => $dict{$key}";
#         }
#         $input = undef;
#     }
# }

# sub pra_two {
#     my(@words, %count, $word);
#     chomp(@words = <<>>);
#
#     foreach my $word (@words) {
#         $count{$word} += 1;
#     }
#
#     foreach $word (keys %count) {
#         say "$word was seen $count{$word} times";
#     }
# }

# pra_mytwo;

# sub pra_three {
    my $longest = 0;
    foreach my $key (keys %ENV) {
        my $key_length = length($key);
        $longest = $key_length if $key_length > $longest;
    }

    foreach my $key (sort keys %ENV) {
        printf "%-${longest}s %s\n", $key, $ENV{$key};
    }
# }

sub pra_three {
    my $longest = 0;
    foreach my $key (keys %ENV) {
        my $key_length = length($key);
        $longest = $key_length if $key_lengt > $longest;
    }

    foreach my $key (sort keys %ENV) {
# pra_three;
