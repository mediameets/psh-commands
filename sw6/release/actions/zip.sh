#!/usr/bin/env bash
#DESCRIPTION: Create ZIP archive for release into Shopware Community store.

cd ../ && zip -FSr __PLUGIN_NAME__-__SW6_PLUGIN_VERSION__.zip __PLUGIN_NAME__ -x
   '__PLUGIN_NAME__/*.git/*'
   '__PLUGIN_NAME__/vendor/*'
   '__PLUGIN_NAME__/psh/*'
   '__PLUGIN_NAME__/tests/*'
   '__PLUGIN_NAME__/composer.lock'
   '__PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/node_modules/*'
   '__PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.stylelintignore'
   '__PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.eslintignore'
   '__PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.eslintrc.js'
   '__PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/stylelint.config.js'
   '__PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/node_modules/*'
   '__PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.stylelintignore'
   '__PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.eslintignore'
   '__PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.eslintrc.js'
   '__PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/stylelint.config.js'
   '__PLUGIN_NAME__/.editorconfig'
   '__PLUGIN_NAME__/.gitignore'
   '__PLUGIN_NAME__/.php_cs.dist'
   '__PLUGIN_NAME__/.psh.xml.dist'
   '__PLUGIN_NAME__/phpinsights.php'
   '__PLUGIN_NAME__/phpstan.neon.dist'
   '__PLUGIN_NAME__/psalm.xml'
   '__PLUGIN_NAME__/phpunit.xml.dist'
   '__PLUGIN_NAME__/xdebug-filter.php'

echo "HINT: Please check the content of the created ZIP archive! Override this sw6:release:zip command
   if you need to exclude additional files from the created ZIP archive!"
