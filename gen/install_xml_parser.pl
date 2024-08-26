use CPAN;

print "Installing perl xml parser...\n";
CPAN::install("YAML");
CPAN::install("XML::Parser");
CPAN::install("XML::Parser::EasyTree");

