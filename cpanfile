requires 'perl', '5.008005';

requires 'Moo';
requires 'LWP::UserAgent';
requires 'URI';
requires 'JSON::XS';

on test => sub {
    requires 'Test::More', '0.88';
    requires 'Test::Exception';

};
