#!/usr/bin/env bash
#DESCRIPTION: Applys php-cs-fixer for PHP code.

# If friendsofphp/php-cs-fixer is installed, run it
if [ -x vendor/bin/php-cs-fixer ]; then
   php vendor/bin/php-cs-fixer fix;
   fi
