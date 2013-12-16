package Business::iDEAL::MollieAPI::Payments;
use Moo;

has name => (is => 'ro', default => 'payments');

with qw/
Business::iDEAL::MollieAPI::Resource
/;

1;
