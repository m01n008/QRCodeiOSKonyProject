#==================================================================================================================================
#
#          FILE:  PerlLogger.pm
#
#         USAGE:  checkout usingLogger.pl (Location : luavmiphone/gen/PerlLogger/usingLogger.pl)
#
#   DESCRIPTION:  This module offers custom logging.
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Aravind.Macharla KH2008
#       COMPANY:  Kony Labs
#       VERSION:  1.0
#       CREATED:  13/01/2021 4:00:01 PM IST
#      REVISION:  ---
#==================================================================================================================================

package PerlLogger;

use strict;
use warnings;
use Term::ANSIColor qw(:constants);
use base 'Exporter';

use constant INFO => 'INFO';
use constant DEBUG => 'DEBUG';
use constant ERROR   => 'ERROR';
use constant WARNING   => 'WARNING';

our @EXPORT_OK = ('INFO', 'DEBUG', 'ERROR', 'WARNING');
our %EXPORT_TAGS = ( constants => [ 'INFO', 'DEBUG', 'ERROR', 'WARNING' ] );


sub new {
    my ($class, $context, $debugMode) = @_;
    
    $class = ref $class if ref $class;
    my $self = bless {
        
        # Context for logging
        context => $context,
        
        #enables Debug Mode
        debugMode => $debugMode
        
    }, $class;
    
    if(not (defined $self->{'debugMode'})){
        $self->{'debugMode'} = 0;
    }
    
    return $self;
}

#/////////////////////////////////////////////////////////////////////////////
=pod

=head2 log

 Parameters  : Message[String], LogLevel[String]
 Returns     : None
 Description : Custom Logger Function

=cut

sub log{
    
    my $self = shift;
    my $msg = shift;
    my $loglevel = shift;
    
    if(not(defined $msg)){
        return;
    }
    
    # When loglevel is not passed, msg will be logged with no customizations.
    if(not(defined $loglevel)){
        print $msg."\n";
        return;
    }
    
    my $msgcontext = '['.$loglevel.']';
    
    if(defined $self->{'context'}){
        $msgcontext = "[".$self->{'context'}."]".$msgcontext;
    }
    
    $msgcontext = $msgcontext.' : '.$msg;
    
    if($loglevel eq INFO){
        print DARK BOLD BLUE, "$msgcontext", RESET;
    }elsif($loglevel eq ERROR){
        print BLINK BOLD RED, "$msgcontext", RESET;
    }elsif($loglevel eq DEBUG){
        if($self->{'debugMode'}){
            print BOLD GREEN, "$msgcontext", RESET;
        }else{
            return;
        }
    }elsif($loglevel eq WARNING){
        print BOLD YELLOW, "$msgcontext", RESET;
    }
    
    print "\n";
}

1;
