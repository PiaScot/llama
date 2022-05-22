#!/usr/bin/env perl

use v5.30;

# while (defined(my $line = <STDIN>)) {
#     print "I saw $line";
# }

# scalar context
# while (<STDIN>) {
#     print "I saw $_";
# }

# list context
# foreach (<STDIN>) {
#     print "I saw $_";
# }

# while(defined(my $line = <>)) {
#     chomp($line);
#     print "It was $line that I saw\n";
# }

# while(<>) {
#     chomp;
#     print "It was $_ that I saw\n";
# }

#escape | file name

use v5.22;

# while(<<>>) {
#     chomp;
#     print "Iw was $_ that I saw\n";
# }

# @ARGV = qw/ a.c 5.pl /;
# while(<>) {
#     chomp;
#     print "It was $_ that I swa in some stooge-like file!\n";
# }

# my @array = qw/ larry  wall /;
# say @array;
# say "@array";

# print <>;

# print (2+3)*4;
# print ((2+3)*4);
# (print (2+3))*4;

# my $user = "algol";
# my $days_to_die = 7.345;
#
# printf "Hello %-12s your password expire in %g days\n", $user, $days_to_die;
#
# printf "%*s", -44, "wilma";

# my @items = qw( wilma dino pebbles );
# printf "The items are:\n" . ("%10s\n" x @items), @items;


# open(my $fh, "<", "5.pl")
#     or die "Can't open < input.txt: $!";

# open CONFIG, '<', 'dino';
# open BEDROCK, '>', $file_name;
# open LOG, '>>', $logfile_name();

# open SOURECE, '<:encoding(UTF-8)', '5.pl';
#
# print "hello\n";
# binmode STDOUT;
 # die "die occured\n";
 # print "no displayed\n";
 
 # if (! open LOG, '<', 'logfile') {
 #     die "Cannot create logfile: $!";
 # }

 # if (@ARGV < 2) {
 #     die "Not enough arguments\n";
 # }

 # if (! open LOG, '<', 'logfile') {
 #     warn "Cannot create logfile: $!";
 # }
 #
 # print "alive!\n";
 
 # use autodie;

 # open LOG, '<', 'logfile';
 # print "no displayed\n";

 # if ( ! open SRC, '>>', "./a.c") {
 #     die "Can not open a.c file ($!)";
 # }

 # while (<SRC>) {
 #     print
 #     # chomp;
 #     # say;
 # }
 
 # print SRC "int max(int l, int r) { return l > r ? l : r;}\n";
 # select SRC;
 # print "// added comment one line by 5.pl file //\n";
 
 # if ( ! open STDERR, ">>/home/plum/doodle/perl/Llama/.error_log") {
 #     die "Cannot open error log fir append: $!";
 # }
 #
 # if (! open SRC, '<', './b.c') {
 #     die "cannnot read-open b.c file : $!";
 # }
 #
 # open my $rocks_fh, '<', './a.c'
 #     or die "Could not open a.c file: $!";
 
 open my $rocks_fh, '>', 'rocks.txt';
 close $rocks_fh;

 open my $rocks_fh, '>>', 'rocks.txt'
     or die "couldn't open rocks.txt: $!";
 foreach my $rock (qw ( slate lave granite ) ) {
     say $rocks_fh $rock
 }

 # print $rocks_fh;
 print { $rocks_fh } $_;
 close $rocks_fh;
 # print STDOUT;
