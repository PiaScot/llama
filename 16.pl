#!/usr/bin/env perl -w

use v5.30;

sub extract_gt3_retbooks {
    my $in = 'rental_list';
    open (my $fh, "<", $in) or die "Can't open $in file";
    while (<$fh>) {
        chomp;
        # my @items = split /:/;
        # my($name, $card_num, undef, undef, undef, $count) = split /:/;
        my($name, $card_num, $count) = (split /:/)[0, 1, 5];
        # say "$name $card_num $count";
        if ($count > 2) {
            say $name;
        }
    }
}

# &extract_gt3_retbooks;

# &extract_gt3_retbooks;

# my @info = stat "./16.pl";
# say "@info";

# my $some_file = "./16.pl";
# my $mtime = (stat $some_file)[9];
# say $mtime;

# my @names = qw{ zero one two three four five six seven eight nine };
# my @numbers = ( @names )[ 9, 0, 2, 1, 0];
# say "@numbers";

my %score;
$score{barney} = 44;
$score{fred} = 88;
$score{dino} = 120;

# say "$score{dino}";

# my @three_scores = ($score{"barney"}, $score{"fred"}, $score{"dino"});

# using hash slice way
my @three_scores = @score{ qw/ barney fred dino / };
# say "@three_scores";

my @players = qw / barney fred dino /;
my @bowling_scores = (195, 205, 30);
@score{ @players } = @bowling_scores;

# say "$score{barney}";

# my %new_hash = map { $_ => $score{$_} } @players;
# my %new_hash = %score{@players};
# say $new_hash{barney};

# my $barney = eval { 3 / 0 };
# say "barney is exist" if defined $barney;

# unless (defined eval { 3 / 10 } ) {
#     say "zero divided" if $@;
# }

# my @averages = ( 2/3, eval { 3 / 0 }, 22 / 7 );
# say "@averages";

# eval "ls";

# use Try::Tiny;
#
# try {
#     die "foo";
# } catch {
#     warn "caught error: $_";
# };

# my @odd_numbers = grep { $_ % 2 } 1..10000;
# my $odd_count = @odd_numbers;
# say "$odd_count";

# print "Some powers of two are:\n",
#     map "\t" . (2 ** $_) . "\n", 0..15;

use List::Util qw(shuffle);
my @shuffle = shuffle(1..1000);
print map { sprintf("%4s\n", $_) } @shuffle;
