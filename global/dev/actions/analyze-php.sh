#!/usr/bin/env bash
#DESCRIPTION: Analyzes the PHP code (with phpstan / psalm / phpinsights).

# If phpstan/phpstan is installed, run it
if [ -x vendor/bin/phpstan ]; then
   php vendor/bin/phpstan analyze;
   fi

# If vimeo/psalm is installed, run it
if [ -x vendor/bin/psalm ]; then
   php vendor/bin/psalm --threads=$(nproc) --diff --diff-methods --show-info=false;
   fi

# If nunomaduro/phpinsights installed, run it
if [ -x vendor/bin/phpinsights ]; then
   php vendor/bin/phpinsights;
   fi
