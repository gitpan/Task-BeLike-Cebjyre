
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Modules I find handy from time to time...',
  'AUTHOR' => 'Glenn Fowler <cebjyre@cpan.org>',
  'BUILD_REQUIRES' => {
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Task-BeLike-Cebjyre',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Task::BeLike::Cebjyre',
  'PREREQ_PM' => {
    'App::Ack' => '0',
    'CGI::Session' => '0',
    'Cache::Memcached::Fast' => '0',
    'Email::MIME' => '0',
    'Email::Sender' => '0',
    'File::chdir' => '0',
    'JSON' => '0',
    'Log::Log4perl' => '0',
    'MIME::Parser' => '0',
    'Mail::IMAPClient' => '3.21',
    'Module::Find' => '0',
    'Net::LDAP' => '0',
    'Net::Server::Mail' => '0',
    'Telephony::CountryDialingCodes' => '0',
    'Template' => '0',
    'Text::Context' => '0',
    'Tie::SecureHash' => '0',
    'XML::Quote' => '0'
  },
  'VERSION' => '0.3.1',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



