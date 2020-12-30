#!/usr/bin/env bash
#DESCRIPTION: Checks composer and npm dependencies against known security vulnerabilities.

ACTION: dev:check-php-security

if [ -f package-lock.json ]; then
   npm audit;
   fi
