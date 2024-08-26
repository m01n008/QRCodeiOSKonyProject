#!/usr/bin/perl -w

####################################################
#global variables
use lib './';
use XCProjectEditor;
#inputs
my $DEVELOPMENT_TEAM_ID=$ARGV[0];
my $PROPERTY_NAME="DEVELOPMENT_TEAM";
my $projectFilePath=$ARGV[1];
####################################################

print "=====================================\n";
print "=====================================\n";
XCProjectEditor::init($projectFilePath);
my @targets = XCProjectEditor::getApplicationTargets();
my %buildSettings = ($PROPERTY_NAME => $DEVELOPMENT_TEAM_ID);
foreach my $targetName (@targets)
{
    XCProjectEditor::updateBuildSettingsForTarget($targetName, \%buildSettings, undef);
}
XCProjectEditor::createProject();
print "Creating Automatic Provisioning Profile...\n";
my $num = 120;
while($num--){
    print "................................\n";
    sleep(1);
}
print "Done...\n";
print "=====================================\n";
print "=====================================\n";

