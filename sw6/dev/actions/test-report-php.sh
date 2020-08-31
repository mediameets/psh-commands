#!/usr/bin/env bash
#DESCRIPTION: Test PHP code and generate report with phpunit.

# If phpunit/phpunit is installed, run it
if [ -x ./../../../vendor/bin/phpunit ]; then
   php ./../../../vendor/bin/phpunit --coverage-html=../../../public/build/tests/__PLUGIN_NAME__;
   fi
