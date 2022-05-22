#!/usr/bin/env perl

use v5.30;
# use warnings;
# use diagnostics;

 # $family_name{'fred'} = 'flinstone';
# $family_name{'barney'} = 'rubble';
#
# print $family_name;

# foreach my $person (qw< barney fred >) {
#     print "I've heard of $person $family_name{$person}\n";
# }

# my $foo = 'bar';
#
# say "$family_name{ "$foo" . 'ney' };


# my %some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello',
#     'wilma', 1.72e30, 'foo', 46, 'betty', "Bye\n");

# say %{some_hash};

# my %h = ('abc', 23, 'efg');
#
# say %h

# my @any_array = %some_hash;
# if (%some_hash == undef) {
#     say "some_hash is undef";
# }
# say @any_array;

# my %inverse_hash = reverse %some_hash;
# say %inverse_hash;

# say $inverse_hash{46};

 # my %last_name = (
 #     'fred' => 'flinstone',
 #     'dino' => undef,
 #     'barney' => 'rubble',
 #     'betty' => 'rubble',
 # );

 my %some_h = ('barfoo', 22, 'bar.foo', 44);
 # my %err_ha = (
 #     bar.foo => '44',
 #     bar => '22',
 #     foo => '12',
 #     barfoo => '56',
 # );

 my %last_name = (
     fred => 'flinstone',
     dino => undef,
     barney => 'rubble',
     '+' => 'compile_error',
     betty => 'rubble',
 );
 # say %last_name;
 
 my @k = keys %last_name;
 my @v = values %last_name;

 my $count = keys %last_name;
 my $c = values %last_name;
 # say $c;

 my %hash = reverse %last_name;;
 # say %hash;

 # if (%hash) {
 #     say "the hash has one more items";
 # } else {
 #     say "the hash has no one itme";
 # }
 # say @k;
 # say @v;
 
 # while ((my $key, my $value) = each %hash) {
 #     say "$key => $value";
 # }
 # my @tst = each %hash;
 # say @tst;
 
 # foreach my $key (sort keys %hash) {
 #     say "$key => $hash{$key}";
 # }

 # if (exists $hash{"rubble"}) {
 #     say" There";
 # }
 #
 # delete $hash{"rubble"};
 #
 # if (exists $hash{"rubble"}) {
 #     say" No Displayed";
 # }

 # say "%%hash";
 
 say "PATH is $ENV{PATH}";
