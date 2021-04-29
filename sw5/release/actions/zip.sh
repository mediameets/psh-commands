#!/usr/bin/env bash
#DESCRIPTION: Create ZIP archive for release into Shopware Community store.

cd ../ && zip -FSr __PLUGIN_FOLDER_NAME__-__SW5_PLUGIN_VERSION__.zip __PLUGIN_FOLDER_NAME__ -x
   '__PLUGIN_FOLDER_NAME__/*.git/*'
   '*/*.zip'
   '*/*.tar'
   '*/*.tar.gz'
   '*/*.phar'
   '*/.gitignore'
   '__PLUGIN_FOLDER_NAME__/vendor/*'
   '__PLUGIN_FOLDER_NAME__/psh/*'
   '__PLUGIN_FOLDER_NAME__/Resources/store/*'
   '__PLUGIN_FOLDER_NAME__/src/Resources/store/*'
   '__PLUGIN_FOLDER_NAME__/tests/*'
   '__PLUGIN_FOLDER_NAME__/composer.json'
   '__PLUGIN_FOLDER_NAME__/composer.lock'
   '__PLUGIN_FOLDER_NAME__/package.json'
   '__PLUGIN_FOLDER_NAME__/package-lock.json'
   '__PLUGIN_FOLDER_NAME__/node_modules/*'
   '__PLUGIN_FOLDER_NAME__/.stylelintignore'
   '__PLUGIN_FOLDER_NAME__/.eslintignore'
   '__PLUGIN_FOLDER_NAME__/.eslintrc.js'
   '__PLUGIN_FOLDER_NAME__/stylelint.config.js'
   '__PLUGIN_FOLDER_NAME__/.editorconfig'
   '__PLUGIN_FOLDER_NAME__/.php_cs.dist'
   '__PLUGIN_FOLDER_NAME__/.psh.xml.dist'
   '__PLUGIN_FOLDER_NAME__/phpinsights.php'
   '__PLUGIN_FOLDER_NAME__/phpstan.neon.dist'
   '__PLUGIN_FOLDER_NAME__/psalm.xml'
   '__PLUGIN_FOLDER_NAME__/phpunit.xml.dist'
   '__PLUGIN_FOLDER_NAME__/xdebug-filter.php';

echo "HINT: Please check the content of the created ZIP archive! Override this sw5:release:zip command
   if you need to exclude additional files from the created ZIP archive!"
