use strict;
use Test::More;
use Test::Exception;

use Business::MollieAPI;
use Data::Dumper;
use JSON::XS;

my $api = Business::MollieAPI->new(
    api_key => 'test_tTgRGYyCPBPfWv9H9NBBGmARq68AX3',
);

my $issuers = $api->issuers->all;

ok($issuers);

ok(ref($issuers), 'HASH');
ok(exists $issuers->{count});
ok(exists $issuers->{totalCount});
ok(exists $issuers->{offset});
ok(exists $issuers->{data});
ok(ref($issuers->{data}) eq 'ARRAY');

#print STDERR Dumper($issuers);

done_testing();

