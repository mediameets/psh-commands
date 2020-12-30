#!/usr/bin/env bash
#DESCRIPTION: Applys fixers for PHP (dev:fix-php), JavaScript & CSS code (via lint-fix-js/-css npm scripts).

# Fix PHP
ACTION: dev:fix-php

# Fix JavaScript & CSS
if [ -f package.json ]; then
   npm run lint-fix-js --if-present;
   npm run lint-fix-css --if-present;
   fi
