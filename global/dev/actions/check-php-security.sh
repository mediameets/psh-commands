#!/usr/bin/env bash
#DESCRIPTION: Checks composer dependencies against known security vulnerabilities.

if [ -x vendor/bin/security-checker ]; then
   php vendor/bin/security-checker security:check;
   fi
