#!/usr/bin/perl

#cpan Log::Log4perl

use Log::Log4perl;
package Logger;

sub init {
    Log::Log4perl->init("WatchBindings/log4perl.properties");
}

sub info{
    my $msg = shift;
    print "INFO: $msg\n";
}

sub debug{
#TODO: add debug enabled check
    my $msg = shift;
    print "DEBUG: $msg\n";
}

sub dump {
	my ($msg, $data) = @_;
	print "DEBUG: $msg\n";
	use Data::Dumper;
#	print Dumper $data;
}

1;