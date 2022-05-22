#!/user/bin/env perl -w

# use v5.30;
# use warnings;
# use diagnostics;

# my $filename = 'magic.pl';
# die "Oops! A file called '$filename' already exist.\n"
# if -e $filename;
# say -M $filename;
# warn "Some warn\n" if -M $filename > 4;

# my @original_files = `ls`;
# print "@original_files";
# my @big_old_files;
# foreach my $filename (`ls`) {
#     push @big_old_files, ($filename =~ s/\s+\r//)
#     if -s $filename > 100_000 and -A $filename > 90;
# }
#
# say "@big_old_files";

# foreach my $filename (`ls`) {
#     print $filename;
# }
# my $filename = 'a.c';
# say $filename if -d $filename;
#
# my $filename = 'a.c';
# say _ if -r $filename and -w _;

# if (-r $filename) {
#     say "The file is readable";
# }
#
# if (-w _) {
#     say "The file is writable";
# }

# if (-w -r $filename) {
#     say "can read and write";
# }

# foreach my $filename (`ls`) {
#     chomp $filename;
#     if (-r -w -x -o -d $filename) {
#         print $filename;
#     }
# }

# my $filename = "detour";
# if (-d $filename and -s _ < 512) {
#     say "some";
# }
# say -s $filename

# my $filename = "fred03.dat";
# my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
#     $size,$atime, $mtime, $ctime, $blksize, $blocks)
#     = stat($filename);

# say "$dev, $ino, $mode, $nlink, $uid, $gid,
# $rdev,$size,$atime, $mtime, $ctime, $blksize, $blocks"
# my $date = localtime $atime;
# say $date;
# my $now = gmtime;
# say $now;
# say 2 << 2;
# say 0 >> 1;
# say ~0;
# my $target = ~0;
# my $count = 0;

# while($target > 0) {
#     $count++;
#     $target = $target >> 1;
# }

# for(my $target = ~0; $target > 0; $count++) {
#     $target >>= 1;
# }
# say $count;

# my $filename = "fred03.dat";
# my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
#     $size,$atime, $mtime, $ctime, $blksize, $blocks)
# = stat($filename);
#
# say $mode;
#
# my $classical_mode = 0777 & $mode;
# say $classical_mode;
# my $u_plus_x = $classical_mode | 0100;
# say $u_plus_x;
# my $go_minus_r = $classical_mode & (~ 0044);
# say $go_minus_r;

# use feature qw(bitwise);
# no warnings qw(experimental::bitwise);
# my $number = 137;
# my $number_str = '137';
# # print $number & $number_str, "\n";
# my $string = "Amilia";
# my $other = 'gokuraku';
# print $other & $number_str, "\n";
# print $number & $number_str, "\n";
# print $other & $number_str, "\n";

use feature qw(bitwise);
no warnings qw(experimental::bitwise);

my $number = 137;
my $number_str = '137';
# print $number & $number_str, "\n";
my $string = "Amilia";
my $other = 'gokuraku';
print $other &. $number_str, "\n";
print $number &. $number_str, "\n";
print $other &. $number_str, "\n";
