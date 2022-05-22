#!/user/bin/env perl -w

use v5.30;
use warnings;
use diagnostics;

use Cwd;

# say "The current working directory is ", getcwd();
# if (! open FH, '<:utf8', './kq') {
#     die "Can not open kq file ($!)";
# }
#
# while (<FH>) {
#     chomp;
#     say if m/module/;
# }

# chdir '~/.config/' or die "cannot chdir $!";
# foreach (`ls`) {
#     print;
# }

# my @all_files = glob '*';
# say "@all_files";

# my @all_files = <*>;
# say "@all_files";

# my $dir_to_process = '/etc';
# opendir my $dh, $dir_to_process or die "Cannot open $dir_to_process: $!";
# foreach my $file (readdir $dh) {
#     say "one file in $dir_to_process is $file";
# }
# closedir $dh;

# my $somedir = "/home/plum/doodle/perl/Llama";
# opendir my $dh, $somedir or die "Cannot open $somedir: $!";
# while (my $name = readdir $dh) {
#     next if $name =~ /A\./;
#     $name = "$somedir/$name";
#     next unless -f $name and -r $name;
#     say $name;
# }

# use File::Spec::Functions;

# my $somedir = "/home/plum/doodle/perl/Llama";
# my $somedir = "../../../";
# opendir my $dh, $somedir or die "Cannot open $somedir: $!";
# while (my $name = readdir $dh) {
#     next if $name =~ /A\./;
#     $name = catfile($somedir, $name);
#     next unless -f $name and -r $name;
#     say $name;
# }

# my $successful = unlink "not_exe", "not_exist_file";
# say $successful;

# foreach my $file (glob "*.old") {
#     # my $newfile = $file;
#     # $newfile =~ s/\.old$/.new/;
#     # (my $newfile = $file) =~ s/\.old$/.new/;
#     my $newfile = $file =~ s/\.old$/.new/r;
#     if (-e $newfile) {
#         warn "can't rename $file to $newfile: $newfile exists\n";
#     } elsif (rename $file => $newfile) {
#
#     } else {
#         warn "rename $file to $newfile failed: $!\n";
#     }
# }
my $now = time;
my $ago = $now - 24 * 60 * 60;
utime $now, $ago, glob '*';
