
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Modules I find handy from time to time...",
  "AUTHOR" => "Glenn Fowler <cebjyre\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-BeLike-Cebjyre",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::BeLike::Cebjyre",
  "PREREQ_PM" => {
    "App::Ack" => 0,
    "App::Base64" => 0,
    "App::Whatsit" => 0,
    "CGI::Session" => 0,
    "CPAN::Reporter" => 0,
    "Cache::Memcached::Fast" => 0,
    "Dist::Zilla::Plugin::TaskWeaver" => 0,
    "Dist::Zilla::PluginBundle::CEBJYRE" => "v0.4.0",
    "Email::MIME" => 0,
    "Email::Sender" => 0,
    "File::chdir" => 0,
    "JSON" => 0,
    "LWP::Protocol::https" => 0,
    "Log::Log4perl" => 0,
    "MIME::Parser" => 0,
    "Mail::IMAPClient" => "3.21",
    "Module::Find" => 0,
    "MongoDB" => 0,
    "Net::Google::FederatedLogin" => 0,
    "Net::LDAP" => 0,
    "Net::OAuth" => 0,
    "Net::Server::Mail" => 0,
    "Pod::Coverage::TrustPod" => 0,
    "Telephony::CountryDialingCodes" => 0,
    "Template" => 0,
    "Term::ReadLine::Perl" => 0,
    "Test::ConsistentVersion" => 0,
    "Test::Pod" => 0,
    "Test::Pod::Coverage" => 0,
    "Test::Reporter::Transport::Metabase" => 0,
    "Text::Context" => 0,
    "Tie::SecureHash" => 0,
    "Try::Tiny" => 0,
    "Versionify::Dispatch" => 0,
    "XML::Quote" => 0,
    "YAML" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "1.0.1",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

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



