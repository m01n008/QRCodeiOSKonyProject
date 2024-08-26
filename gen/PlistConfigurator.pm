#!/usr/bin/perl -w
package PlistConfigurator;
use Data::Dumper;

sub new {
    my ($class,$plist) = @_;
#    print Dumper(@_);
    $class = ref $class if ref $class;
    my $self = bless {
        plist => $plist
    }, $class;
    return $self;
}

sub isKeyPresent
{
    my ($self,$key) = @_;
    my $retvalue = 0;
    `/usr/libexec/PlistBuddy -c "Print :$key" '$self->{plist}' 2>/dev/null`;
    my $errorCode = $?;
    if($errorCode == 0){
        $retvalue = 1;
    }
    return $retvalue;
}

sub setValueForKey
{
    my ($self,$key,$value,$type) = @_;
    #print $key."+++++".$value."\n";
    my $res;
    if($self->isKeyPresent($key)){
        $res = `/usr/libexec/PlistBuddy -c "delete :$key" '$self->{plist}' 2>/dev/null`;
    }
    
    if($type eq "array"){
        my @values = @{$value};
        if(scalar @values){
            $res = `/usr/libexec/PlistBuddy -c "add :$key $type" '$self->{plist}' 2>/dev/null`;
            foreach my $val (@values) {
                # Escaping special characters like '(', ')','$'
                $val =~ s/\$/\\\$/g;
                $val =~ s/\(/\\\(/g;
                $val =~ s/\)/\\\)/g;
                
                $res = `/usr/libexec/PlistBuddy -c "add :$key: string $val" '$self->{plist}' 2>/dev/null`;
            }
        }
    }else{
        if($value){
            $res = `/usr/libexec/PlistBuddy -c "add :$key $type $value" '$self->{plist}' 2>/dev/null`;
        }
    }
    
    return $res;
}

sub getValueForKey
{
    my ($self,$key,$type) = @_;
    my @values;
    my $bool = 1;
    if($type eq "array"){
        my $i = 0;
        while($bool){
            my $res = `/usr/libexec/PlistBuddy -c "Print :$key:$i" '$self->{plist}' 2>/dev/null`;
            my $errorCode = $?;
            if($errorCode == 0){
                $i=$i+1;
                push(@values,$res);
            }else{
                $bool = 0;
            }
        }
    }else{
        my $res = `/usr/libexec/PlistBuddy -c "Print :$key" '$self->{plist}' 2>/dev/null`;
        return $res;
    }
    
    return \@values;
}

sub deleteKey
{
    my ($self,$key) = @_;
    my $res;
    if($self->isKeyPresent($key)){
        $res = `/usr/libexec/PlistBuddy -c "delete :$key" '$self->{plist}' 2>/dev/null`;
    }
    
    return $res;
}

1;
