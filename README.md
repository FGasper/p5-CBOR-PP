# NAME

CBOR::PP - CBOR in pure Perl

# SYNOPSIS

    my $value = CBOR::PP::decode( $cbor );

    my $tagged = CBOR::PP::tag( 123, 'value' );
    my $cbor = CBOR::PP::encode( [ 'some', { data => $tagged } ] );

# DESCRIPTION

This module is a syntactic convenience. For details about what CBOR::PP
can and can’t do, see the underlying [CBOR::PP::Encode](https://metacpan.org/pod/CBOR::PP::Encode) and
[CBOR::PP::Decode](https://metacpan.org/pod/CBOR::PP::Decode) modules.

# STATUS

This distribution is an experimental effort. Unless XS or licensing
is a problem for you, you probably should use [CBOR::XS](https://metacpan.org/pod/CBOR::XS).

That having been said, CBOR is a simple enough encoding that I
suspect—I hope!—that bugs here will be few and far between.

Note that this distribution’s interface can still change. If you decide
to use CBOR::PP in your project, please always check the changelog before
upgrading.

# AUTHOR

[Gasper Software Consulting](http://gaspersoftware.com) (FELIPE)

# LICENSE

This code is licensed under the same license as Perl itself.
