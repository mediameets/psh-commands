#!/usr/bin/env bash
#DESCRIPTION: Checks composer and npm dependencies (storefront & administration) against known security vulnerabilities.

ACTION: dev:check-php-security

if [ -f __SW6_ADMINISTRATION_ASSET_FOLDER__/package-lock.json ]; then
   npm --prefix __SW6_ADMINISTRATION_ASSET_FOLDER__ audit;
   fi

if [ -f __SW6_STOREFRONT_ASSET_FOLDER__/package-lock.json ]; then
   npm --prefix __SW6_STOREFRONT_ASSET_FOLDER__ audit;
   fi
