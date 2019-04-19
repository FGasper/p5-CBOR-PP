package CBOR::PP;

use strict;
use warnings;

=encoding utf-8

=head1 NAME

CBOR::PP - CBOR in pure Perl

=head1 SYNOPSIS

    my $value = CBOR::PP::decode( $cbor );

    my $tagged = CBOR::PP::tag( 123, 'value' );
    my $cbor = CBOR::PP::encode( [ 'some', { data => $tagged } ] );

=head1 DESCRIPTION

This module is a syntactic convenience. For details about what CBOR::PP
can and can’t do, see the underlying L<CBOR::PP::Encode> and
L<CBOR::PP::Decode> modules.

=head1 STATUS

This distribution is an experimental effort. Unless XS or licensing
is a problem for you, you probably should use L<CBOR::XS>.

That having been said, CBOR is a simple enough encoding that I
suspect—I hope!—that bugs here will be few and far between.

Note that this distribution’s interface can still change. If you decide
to use CBOR::PP in your project, please always check the changelog before
upgrading.

=head1 AUTHOR

L<Gasper Software Consulting|http://gaspersoftware.com> (FELIPE)

=head1 LICENSE

This code is licensed under the same license as Perl itself.

=cut

#----------------------------------------------------------------------

use CBOR::PP::Encode ();
use CBOR::PP::Decode ();

sub encode { CBOR::PP::Encode->encode($_[0]) }

sub decode { scalar CBOR::PP::Decode->decode($_[0]) }

*tag = *CBOR::PP::Encode::tag;

1;
