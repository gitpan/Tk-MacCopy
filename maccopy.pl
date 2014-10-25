#!/usr/local/bin/perl -w
use Tk;
use lib './blib/lib'; use Tk::MacCopy;
use strict;

die "Usage: maccopy.pl 'from' 'to'" unless $#ARGV == 1;

my $mw = MainWindow->new;

my $mc = $mw->MacCopy(-bufsize => 4 * 1_048_576);

my $b = $mw->Button(
    -text    => "Push me to copy all files in '$ARGV[0]' to '$ARGV[1]'.",
    -command => sub {$mc->copy($ARGV[0],  $ARGV[1])},
)->pack;
$mw->Button(-text => 'Quit', -command => \&exit)->pack;

$mc->Subwidget('collapsableframe')->open;

MainLoop;
