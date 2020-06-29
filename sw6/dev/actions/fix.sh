#!/usr/bin/env bash
#DESCRIPTION: Applys fixers for PHP (dev:fix-php), JavaScript & CSS code (via lint-fix-js/-css npm scripts).

# Fix PHP
ACTION: dev:fix-php

# Fix JavaScript & CSS on Administration
if [ -d __SW6_ADMINISTRATION_ASSET_FOLDER__ ] && [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/package.json ]; then
   npm --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__ run lint-fix-js --if-present;
   npm --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__ run lint-fix-css --if-present;
   fi

# Fix JavaScript & CSS on Storefront
if [ -d __SW6_STOREFRONT_ASSET_FOLDER__ ] && [ -f __SW6_STOREFRONT_ASSET_FOLDER__/package.json ]; then
   npm --prefix __SW6_STOREFRONT_ASSET_FOLDER__ run lint-fix-js --if-present;
   npm --prefix __SW6_STOREFRONT_ASSET_FOLDER__ run lint-fix-css --if-present;
   fi
