package Acme::Boolean;
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

our @EXPORT = (qw(true false), @true, @false);
our @EXPORT_OK = qw(isTrue isFalse isBoolean);
our %EXPORT_TAGS = (
    default => [@EXPORT],
    all     => [@EXPORT, @EXPORT_OK]
);

1;

