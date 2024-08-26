#!/usr/bin/perl

use strict;
use warnings;
use WatchAppHandler;
use Logger;
Logger::init();
  
package WatchAppHandlerTest;

my $whandler = new WatchAppHandler();
#$whandler->getWatchAppFilesUsingJSONFiles("/Users/murty/Documents/studiows/sample");
$whandler->setSkinsTheme("/Users/murty/Documents/studiows/temp/WatchApp/build/server/iphonekbf/themes/watch/default.theme");
$whandler->getWatchAppFilesUsingJSONFiles("/Users/murty/Documents/studiows/temp/WatchApp/build/server/iphonekbf/konyappiphone"); #"/Users/murty/Downloads/konyappiphone"


#Template type check