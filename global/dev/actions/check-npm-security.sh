#!/usr/bin/env bash
#DESCRIPTION: Checks npm dependencies against known security vulnerabilities.

if [ -f package-lock.json ]; then
   npm audit;
   fi
