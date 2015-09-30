use Mojo::Base -strict;
use Test::More;

use_ok 'Cohort';
diag "Testing Cohort $Cohort, Perl $], $^X";
use_ok 'Minion';

done_testing();
