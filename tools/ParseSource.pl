#!/usr/bin/perl 

use strict;
use warnings;
use FindBin qw($Bin);
use lib $Bin;
require Conf::Libconfig::ParseSource;

Conf::Libconfig::ParseSource->run;

