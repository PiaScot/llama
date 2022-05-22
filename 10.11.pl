#!/user/bin/env perl -w

use v5.30;
use warnings;
use diagnostics;

# say "Chose number in 1..100";
# my $answer = int(1 + rand 100);
# say "ans = $answer";
# while(<>) {
#     chomp;
#     last if ($answer eq $_ || /exit|quite|\s?/);
#     say "Too low" if ($answer > $_);
#     say "Too high" if ($answer < $_);
# }
# my $Debug = $ENV{DEBUG} // 1;
#
# while(1) {
#     say "Please enter a guess from 1 to 100: ";
#     say "Don't tell anyone, but the secret number is $answer" if $Debug;
#     chomp(my $guess = <STDIN>);
#     if ($guess =~ /quite|exit|\A\s*\z/i) {
#         say "Sorry you gave up. The number was $answer";
#         last;
#     } elsif ($guess < $answer) {
#         say "Too small";
#     } elsif ($guess == $answer) {
#         say "That was it";
#         last;
#     } else {
#         say "Too large. Try again";
#     }
# }

$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

my $longest = 0;
foreach my $key ( keys %ENV) {
    my $key_length = length($key);
    $longest = $key_length if $key_length > $longest;
}

foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key} // "(undefined)";
}
