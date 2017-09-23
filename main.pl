use strict;
use warnings;
use Term::Choose qw( choose );
$|=1;

sub main {
  workspace_ascii();
  check_for_updates();


  choose( [ 'Press ENTER to continue' ], { prompt => '' } );    # no choice
}

sub workspace_ascii {
  print "OSX Workspace - Theresa Thoraldson\n";
  print "Last Updated: 9/23/2017\n\n"
}

sub check_for_updates {
  print "Would you like to check for updates?\n";
  my $array_ref = [ qw( yes no ) ];
  print $array_ref[1];
  my $choice = choose( $array_ref );
  print "$choice\n";
}

main();
