
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Modules I find handy from time to time...',
  'AUTHOR' => 'Glenn Fowler <cebjyre@cpan.org>',
  'BUILD_REQUIRES' => {
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Task-BeLike-Cebjyre',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Task::BeLike::Cebjyre',
  'PREREQ_PM' => {
    'App::Ack' => '0',
    'App::Whatsit' => '0',
    'CGI::Session' => '0',
    'CPAN::Reporter' => '0',
    'Cache::Memcached::Fast' => '0',
    'Dist::Zilla::Plugin::TaskWeaver' => '0',
    'Dist::Zilla::PluginBundle::CEBJYRE' => '0',
    'Email::MIME' => '0',
    'Email::Sender' => '0',
    'File::chdir' => '0',
    'JSON' => '0',
    'Log::Log4perl' => '0',
    'MIME::Parser' => '0',
    'Mail::IMAPClient' => '3.21',
    'Module::Find' => '0',
    'MongoDB' => '0',
    'Net::Google::FederatedLogin' => '0',
    'Net::LDAP' => '0',
    'Net::OAuth' => '0',
    'Net::Server::Mail' => '0',
    'Telephony::CountryDialingCodes' => '0',
    'Template' => '0',
    'Term::ReadLine::Perl' => '0',
    'Test::ConsistentVersion' => '0',
    'Test::Pod' => '0',
    'Test::Pod::Coverage' => '0',
    'Test::Reporter::Transport::Metabase' => '0',
    'Text::Context' => '0',
    'Tie::SecureHash' => '0',
    'Try::Tiny' => '0',
    'Versionify::Dispatch' => '0',
    'XML::Quote' => '0',
    'YAML' => '0'
  },
  'VERSION' => '0.7.0',
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



