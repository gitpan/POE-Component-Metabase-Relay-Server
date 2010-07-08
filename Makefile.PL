
use strict;
use warnings;

BEGIN { require v5.6.0; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'A Metabase relay server component',
  'AUTHOR' => 'Chris Williams <chris@bingosnet.co.uk>',
  'BUILD_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.42',
    'Test::More' => '0.47'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.42'
  },
  'DISTNAME' => 'POE-Component-Metabase-Relay-Server',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'POE::Component::Metabase::Relay::Server',
  'PREREQ_PM' => {
    'CPAN::Testers::Report' => '1.999',
    'DBD::SQLite' => '1.29',
    'DBI' => '1.609',
    'Data::UUID' => '1.203',
    'JSON' => '2.17',
    'JSON::XS' => '2.29',
    'Metabase::Fact' => '0.011',
    'Metabase::User::Profile' => '0.003',
    'Metabase::User::Secret' => '0.003',
    'Moose' => '1.01',
    'Moose::Util::TypeConstraints' => '1.01',
    'MooseX::AttributeHelpers' => '0.23',
    'MooseX::POE' => '0.205',
    'MooseX::Types::Path::Class' => '0.05',
    'MooseX::Types::URI' => '0.02',
    'POE' => '1.287',
    'POE::Component::Client::HTTP' => '0.895',
    'POE::Component::EasyDBI' => '1.23',
    'POE::Component::Metabase::Client::Submit' => '0.02',
    'Params::Util' => '1.01',
    'Storable' => '0',
    'Test::POE::Server::TCP' => '1.12',
    'Time::HiRes' => '0',
    'URI' => '1.52'
  },
  'VERSION' => '0.14',
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



