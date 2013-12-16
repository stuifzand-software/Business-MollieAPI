use strict;
use Test::More;
use Test::Exception;

use Business::iDEAL::MollieAPI;
use Data::Dumper;
use JSON::XS;

my $api = Business::iDEAL::MollieAPI->new();

dies_ok {
    $api->api_key('hello world');
};

$api->api_key('test_tTgRGYyCPBPfWv9H9NBBGmARq68AX3');

my $req = $api->payments->create_request(
    amount      => '12.34',
    redirectUrl => "http://example.com/test.php",
    description => "Order #123123",
);

is($req->method, 'POST');
is($req->uri, 'https://api.mollie.nl/v1/payments');
is($req->content_type, 'application/json');

my $o = decode_json($req->decoded_content);
is($o->{amount}, "12.34");
is($o->{redirectUrl}, "http://example.com/test.php");
is($o->{description}, "Order #123123");

my $res = $api->payments->create(
    amount      => '12.34',
    redirectUrl => "http://example.com/test.php",
    description => "Order #123123",
    method      => 'ideal',
);

print STDERR Dumper($res);

my $id = $res->{id};

my $res2 = $api->payments->get($id);
print STDERR Dumper($res2);

done_testing;

