#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp;

binmode STDOUT, ":utf8";
use utf8;

package JSONParser;

sub new
{
    my $class = shift;
    my $self = {
    };
    
    bless $self, $class;
    return $self;
}

#It reades given json file handle and converts the json data to hashes

sub parseJSONFileToHash {
	my( $self, $handle ) = @_;
	
	my $json;
    ## slurp mode
    {
        local $/;
        $json = <$handle>;
    }
    use JSON;
    #   removing comments in JSON
    #   JSON removed support for comments. ref:- https://plus.google.com/+DouglasCrockfordEsq/posts/RK8qyGVaGSr
    $json =~ s/\/\*.*\n/\n/g;
	return decode_json($json);
}

1;
