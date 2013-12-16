package Business::iDEAL::MollieAPI::Issuers;
use Moo;

has name => (is => 'ro', default => 'issuers');

with qw/
Business::iDEAL::MollieAPI::Resource
/;

1;
