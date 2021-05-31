use Acme::Boolean;
use Test::More;

plan tests => 11;

ok !untrue;
ok !wrong;
ok !incorrect;
ok !errorneous;
ok !fallacious;
ok !untruthful;
ok !nah;
ok !&no;
ok !NO;
ok !UNREAL;
ok !FISHY;
