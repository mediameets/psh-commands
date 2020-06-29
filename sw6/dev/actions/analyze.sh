#!/usr/bin/env bash
#DESCRIPTION: Analyzes the PHP (dev:analyze-php), JavaScript & CSS code (via lint-js/-css npm scripts).

# Linting PHP
ACTION: dev:analyze-php

# Lint JavaScript & CSS on Administration
if [ -d __SW6_ADMINISTRATION_ASSET_FOLDER__ ] && [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/package.json ]; then
   npm --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__ run lint-js --if-present;
   npm --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__ run lint-css --if-present;
   fi

# Lint JavaScript & CSS on Storefront
if [ -d __SW6_STOREFRONT_ASSET_FOLDER__ ] && [ -f __SW6_STOREFRONT_ASSET_FOLDER__/package.json ]; then
   npm --prefix __SW6_STOREFRONT_ASSET_FOLDER__ run lint-js --if-present;
   npm --prefix __SW6_STOREFRONT_ASSET_FOLDER__ run lint-css --if-present;
   fi
