#!/usr/bin/env perl -w

use v5.30;

sub one {
    chdir '/' or die "Can't chdir to root directory $!";
    exec 'ls', '-l' or die "Can't exec ls: $!";
}

# &one;

# sub two {
#     open STDOUT, '>', 'ls.out', or die "Can't write to ls.out: $!";
#     open STDERR, '>', 'ls.err', or die "Can't write to ls.err: $!";
#     chdir '/' or die "Can't chdir to root directory: $!";
#     exec 'nothing_ls', '-l' or die "Can't exec ls: $!";
# }

# &two;
# 

# sub three {
#     if (`date` =~ /\AS/) {
#         print "go play!\n";
#     } else {
#         print "get to work!\n";
#     }
# }

sub four {
    sub my_hup_handler { state $n; say 'Caught HUP: ', ++$n }
    sub my_usr1_handler { state $n; say 'Caught USR1: ', ++$n }
    sub my_usr2_handler  { state $n; say 'Caught USR2: ', ++$n }
    sub my_int_handler { say 'Caught INT. Exiting.'; exit }

    say "I asm $$";

    foreach my $signal ( qw(int hup usr1 usr2) ) {
        $SIG{ uc $signal } = "my_${signal}_handler";
    }

    while(1) { sleep 1 };
}

&four;
