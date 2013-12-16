use strict;

use Test::More;
use Test::Exception;

use Business::MollieAPI;
use Data::Dumper;
use JSON::XS;

my $api = Business::MollieAPI->new(
    api_key => 'test_tTgRGYyCPBPfWv9H9NBBGmARq68AX3',
);

my $methods = $api->methods->all;

ok($methods);

ok(ref($methods), 'HASH');
ok(exists $methods->{count}, 'has count');
ok(exists $methods->{totalCount}, 'has total_count');
ok(exists $methods->{offset}, 'has offset');

done_testing();

