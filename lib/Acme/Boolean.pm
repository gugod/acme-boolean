package Acme::Boolean;
# ABSTRACT: There is more then one way to be true.

use strict;
use warnings;

use boolean ':all';

use base 'Exporter';

no strict 'refs';

my @true = map {
    *{"$_"} = \&true;
    $_;
} qw(correct accurate right verifiable truthful trusty);

my @false = map {
    *{$_} = \&false;
    $_;
} qw(untrue wrong incorrect errorneous fallacious untruthful fabricated nah nil);

my @ad = map {
    *{$_} = sub($) { shift; };
    $_;
} qw(so totally very definitely);

our @EXPORT = (qw(true false), @ad, @true, @false);
our @EXPORT_OK = qw(isTrue isFalse isBoolean);
our %EXPORT_TAGS = (
    default => [@EXPORT],
    all     => [@EXPORT, @EXPORT_OK]
);

1;

