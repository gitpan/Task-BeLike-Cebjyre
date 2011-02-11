use strict;
use warnings;
package Task::BeLike::Cebjyre;
BEGIN {
  $Task::BeLike::Cebjyre::VERSION = '0.3.1';
}

# ABSTRACT: Modules I find handy from time to time...


1;

__END__
=pod

=head1 NAME

Task::BeLike::Cebjyre - Modules I find handy from time to time...

=head1 VERSION

version 0.3.1

=head1 TASK CONTENTS

=head2 Email stuff

=head3 L<Email::MIME>

=head3 L<Email::Sender>

Also gives us Moose and Email::Address

=head3 L<Mail::IMAPClient> 3.21

Version 3.21 required because: it introduced xlist_folders

=head3 L<MIME::Parser>

=head3 L<Net::Server::Mail>

=head2 Data Access

=head3 L<Cache::Memcached::Fast>

=head3 L<Net::LDAP>

=head2 The Interwebs

=head3 L<CGI::Session>

=head2 CLI tools

=head3 L<App::Ack>

=head2 Misc

=head3 L<File::chdir>

=head3 L<JSON>

=head3 L<Log::Log4perl>

=head3 L<Module::Find>

=head3 L<Telephony::CountryDialingCodes>

=head3 L<Template>

=head3 L<Text::Context>

=head3 L<Tie::SecureHash>

=head3 L<XML::Quote>

=head1 AUTHOR

Glenn Fowler <cebjyre@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Glenn Fowler.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

