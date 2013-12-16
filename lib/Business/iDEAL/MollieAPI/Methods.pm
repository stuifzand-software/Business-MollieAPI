package Business::iDEAL::MollieAPI::Methods;
use Moo;

has name => (is => 'ro', default => 'methods');

with qw/
Business::iDEAL::MollieAPI::Resource
/;

1;

