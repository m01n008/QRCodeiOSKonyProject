use lib '.';
use PerlLogger ':constants';

my $logger = new PerlLogger("Aravind");
$logger->log("Testing With Context");
$logger->log("Testing INFO", INFO);
$logger->log("Testing ERROR", ERROR);
$logger->log("Testing WARNING", WARNING);
$logger->log("Testing DEBUG", DEBUG);

print "\n#####################################\n\n";

$logger = new PerlLogger();
$logger->{'debugMode'} = 1;
$logger->log("Testing With No Context and Enabling Debug");
$logger->log("Testing INFO", INFO);
$logger->log("Testing ERROR", ERROR);
$logger->log("Testing WARNING", WARNING);
$logger->log("Testing DEBUG", DEBUG);
