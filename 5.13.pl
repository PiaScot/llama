#!/usr/bin/env perl

use v5.30;

# print reverse <<>>;
# my @reverse_files;
#
# while(<<>>) {
#     push @reverse_files
# }
# foreach my $src (<<>>) {
#     print $src;
#     print "end\n";
# }
while(<<>>) {
    printf "%${@_[0]}s\n", $_;
}


# print "Enter some lines, then press Ctrl-D:\n";
# chomp(my @lines = <STDIN>);
#
# # print "1..9" x 7, "1..5\n";
#
# foreach(@lines) {
#     print "%20s\n", $_;
# }
# print "1234567890" x ( 4 ), "\n";
