#!/usr/bin/env bash
#DESCRIPTION: Test PHP code with phpunit.

# If phpunit/phpunit is installed, run it
if [ -x ./vendor/bin/phpunit ]; then
   php ./vendor/bin/phpunit;
   fi
