#!/usr/bin/env perl -w

use v5.30;

# system 'date';
# system 'for i in *; do echo == $i ==; cat $i; done';
# system "echo $0";

# unless (system 'date') {
#     say "We gave you a date. OK!";
# }

# my $res = !system 'rm -rf nothing_file' or die 'something went wrong';
# say $res;

# my $return_value = system('rm -rf nothing_file');
# my $child_exit_node = $return_value >> 8;
# say $child_exit_node;
#
# my $low_octed = $return_value & 0xFF # erase upper-octet
# my $dumped_core = $return_value & 0b1_0000000; #128
# my $signal_number = $low_octed & 0b0111_1111; # 0x7f or 127

# use Config;
# if ($Config{usethreads}) {
#     print "has thread support\n"
# }

# use Config qw(myconfig config_sh config_vars config_re);

# print myconfig();

# print config_sh();
#
# print config_re();
#
# config_vars(qw(osname archname));


# exec 'date';
# die "date couldn't run: $!";

# my $no_newline_now = chomp(`date`);
# chomp(my $no_newline_now = `date`);
# print "A moment ago, it was $no_newline_now, I think.\n";

# my @functions = qw{ int rand sleep length hex eof not exit sqrt umask };
# my %about;

# foreach (@functions) {
#     $about{$_} = `perldoc -t -f $_`;
# }
# foreach (@functions) {
#     $about{$_} = qx(perldoc -t -f $_);
# }

# say $about{int};

# my @list_lines = `ls -la`;
# foreach (@list_lines) {
#     say $_;
# }

# my %list;
# foreach(`ls -la`) {
#     my ($modes, $links, $owner, $group, $bsize, $timestamp, $name) =
#     /(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s(\S+)\s,((\S+)\s+(\S+)\s+(\S+)\s+)\s+(.*)/;
#     $list{$name} .= "$modes $links $owner $group $bsize $timestamp $name";
# }
#
# say "$list{in}";

# open DATE, 'date|' or die "cannot pipe from date: $!";

# open my $find_fh, '-|',
# 'find', qw (/home/plum/ -atime +30 -size +1000 -print )
#     or die "forkL $!";
# while (<$find_fh>) {
#     chomp;
#     printf "%s size %dK last accessed %.2f days ago\n",
#     $_, (1023 + -s $_)/1024, -A $_;
# }

# system 'date';

# defined(my $pid = fork) or die "Cannot fork: $!";
# unless($pid) {
#     # start child process
#     exec 'date';
#     die "Cannot exec date: $!";
# }
#
# waitpid($pid, 0);

# kill 2, 9784 or die "Cannot signal 9784 with SIGINT: $!";
# kill INT => 9784 or die "Cannot signal 9784 with SIGINT: $!";

# my $pid = 9784;
# unless (kill 0, $pid) {
#     warn "$pid has gone away!";
# }

my $temp_directory = "/tmp/myprog.$$";
mkdir $temp_directory, 0700 or die "Cannot create $temp_directory: $!";

sub clean_up {
    unlink glob "$temp_directory/*";
    rmdir $temp_directory;
}

sub my_int_handler {
    &clean_up();
    die "interupted, exiting...\n";
}

$SIG{'INT'} = 'my_int_handler';


&clean_up();
