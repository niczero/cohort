use 5.014_001;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Cohort',
  VERSION_FROM => 'lib/Cohort.pm',
  ABSTRACT     => 'Management of distributed and scheduled jobs',
  AUTHOR       => 'Nic Sandfield <niczero@cpan.org>',
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    dynamic_config => 0,
    'meta-spec'    => {version => 2},
    prereqs        => {runtime => {requires => {perl => 5.014001}}},
    requires       => {perl => 5.014001},
    resources      => {
      bugtracker => {web => 'https://github.com/niczero/cohort/issues'},
      homepage   => 'http://niczero.github.io/cohort',
      license    => 'http://www.opensource.org/licenses/artistic-license-2.0',
      repository => {
        type => 'git',
        url  => 'https://github.com/niczero/cohort.git',
        web  => 'https://github.com/niczero/cohort'
      }
    },
    no_index => {directory => [qw(cfg data test)]}
  },
  BUILD_REQUIRES => {'Test::More' => 0},
  CONFIGURE_REQUIRES => {'ExtUtils::MakeMaker' => 6.3},
  PREREQ_PM => {
    Mojolicious => 6,
    Mojar => 2,
    'Mojar::Cron' => 0.241,
    'Mojar::Message' => 1.053,
    'Mojar::Mysql' => 2.111,
    'Mojolicious::Plugin::Log::Timestamp' => 0.022,
    'Mojolicious::Plugin::Authentication' => 1.26
  },
  EXE_FILES => [],
  test => {TESTS => 'test/*.t'}
);
