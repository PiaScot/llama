#!/user/bin/env perl -w

use v5.30;
use warnings;
use diagnostics;

# $_ = "fredfredbabafredfredbarney";
# # $_ = "fredbarneyfred";
# my $what = '(fred|barney)';
# if (/$what{3}/) {
#     say "matched";
# }

# $^I = ".out";
# while(<>) {
#     s/fred/Larry/gi;
#     print;
# }

# my $in = $ARGV[0];
# if (! defined $in) {
#     die "Usage: $0 filename";
# }
#
# my $out = $in;
# $out =~ s/(\.\w+)?$/.out/;
#
# if (! open $in_fh, '<', $in) {
#     die "Can't open '$in': $!";
# }
#
# if (! open $out_fh, '>', $out) {
#     die "Can't write '$out': $!";
# }
#
# while (<$in_th>) {
#     s/Fred/Larry/gi;
#     print $out_fh $_;
# }

# $_ = "fred&wilma";
# chomp;
# s/Fred/\n/gi;
# s/Wilma/Fred/gi;
# s/\n/Wilma/g;
# say;

# $^I = "bak";
# while(<>) {
#     if (/\A#!/) {
#         print $_;
#         $_ .= "## Copyright (C) 2022 by Plum\n";
#     }
#     print;
# }

# my %do_these;
# foreach (@ARGV) {
#     $do_these{$_} = 1;
# }
#
# while(<>) {
#     if (/\A## Copyright/) {
#         delete $do_these{$ARGV};
#     }
# }
#
# @ARGV = sort keys %do_these;
# $^I = ".bak";
# while(<>) {
#     if (/\A#!/) {
#         $_ .= "## Copyright (C) 2022 by Plum\n";
#     }
#     print;
# }
