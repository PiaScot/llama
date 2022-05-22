#!/user/bin/env perl -w

use v5.30;
# use warnings;
# use diagnostics;

# use Module::CoreList;
#
# my %modules = %{ $Module::CoreList::version{5.024}};
# # foreach my $key (sort keys %modules) {
# #     say "$modules{$key}";
# # }
# print join "\n", keys %modules;

use feature qw(postderef);
no warnings qw(experimental::postderef);

use Module::CoreList;

my %modules = $Module::CoreList::version{5.024}->%*;

# print join "\n", keys %modules;
