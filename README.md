# NAME

Business::MollieAPI - Implementation of new Mollie API

# SYNOPSIS

    use Business::MollieAPI;

    my $api = Business::MollieAPI->new(api_key => 'live_.....');

    my $methods = $api->methods->all;

    my $issuers = $api->issuers->all;

    my $payment = $api->payments->create({
      amount      => '12.34',
      redirectUrl => 'http://example.com/test.php',
      description => 'Order #123',
    });

    # Save $payment->{id} for later

    # Later...
    my $l = $api->payments->get($id);

# DESCRIPTION

Business::MollieAPI is the implementation of the new Mollie API.

It supports multiple payment methods: iDEAL, MisterCash and creditcard.

Currently also the webhook url needs to be set.

# AUTHOR

Peter Stuifzand <peter@stuifzand.eu>

# COPYRIGHT

Copyright 2013- Peter Stuifzand

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
