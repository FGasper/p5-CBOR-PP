#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

use CBOR::PP;

my @numbers = (1 .. 10);

my $cbor = join(
    q<>,
    "\x80" | chr(0 + @numbers),
    ( map { "\xfb" . pack('d>', $_) } @numbers ),
);

my $decoded = CBOR::PP::decode($cbor);

is_deeply(
    $decoded,
    \@numbers,
    'array of all double-floats',
);

done_testing;
