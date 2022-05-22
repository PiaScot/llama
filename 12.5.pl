#!/user/bin/env perl -w

use v5.30;
use warnings;
use diagnostics;

# sub what_file_mode {
#     
# foreach my $file (@ARGV) {
#     print "readable " if -r $file;
#     print "writable " if -w $file;
#     print "\n";
# }
# foreach my $file (@ARGV) {
#     my $attribs = &attributes($file);
#     print "'$file' $attribs.\n";
# }
#
# sub attributes {
#     my $file = shift @_;
#     return "does not exist" unless -e $file;
#
#     my @attrib;
#     push @attrib, "readable" if -r $file;
#     push @attrib, "writable" if -w $file;
#     push @attrib, "executable" if -x $file;
#     return "exist" unless @attrib;
#     'is ' . join " and ", @attrib;
# }

die "No file names supplied!\n" unless @ARGV;
my $oldest_name = shift @ARGV;
my $oldest_age = -M $oldest_name;

foreach (@ARGV) {
    my $age = -M;
    ($oldest_name, $oldest_age) = ($_, $age)
    if $age > $oldest_age;
}

my $date = gmtime $oldest_age;
say $date;
# printf "The oldest file was %s, and it was %s old.\n",
#     $oldest_name, $date;

