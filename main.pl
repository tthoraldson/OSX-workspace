use strict;
use warnings;
use Term::Choose qw( choose );
$|=1;

sub main {
  workspace_ascii();
  check_for_updates();

  # choose( [ 'Press ENTER to continue' ], { prompt => '' } );    # no choice
}

sub workspace_ascii {
  print "OSX Workspace - Theresa Thoraldson\n";
  print "Last Updated: 9/23/2017\n\n"
}

sub check_for_updates {
  print "Would you like to start tmux?\n";
  my $array_ref = [ qw( yes no ) ];
  my $choice = choose( $array_ref );

  if ($choice eq "yes") {
    print "Starting TMUX\n";
    exec('tmux');
  } 
}

main();
