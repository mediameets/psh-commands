#!/usr/bin/env bash
#DESCRIPTION: Create ZIP archive for release into Shopware Community store.

if [ ! __SW6_IS_APP__ ]; then
      cd ../ && zip -FSr __SW6_PLUGIN_NAME__-__SW6_PLUGIN_VERSION__.zip __SW6_PLUGIN_NAME__ -x
         '__SW6_PLUGIN_NAME__/*.git/*'
         '*/*.zip'
         '*/*.tar'
         '*/*.tar.gz'
         '*/*.phar'
         '*/.gitignore'
         '__SW6_PLUGIN_NAME__/vendor/*'
         '__SW6_PLUGIN_NAME__/bin/*'
         '__SW6_PLUGIN_NAME__/psh/*'
         '__SW6_PLUGIN_NAME__/src/Resources/store/*'
         '__SW6_PLUGIN_NAME__/tests/*'
         '__SW6_PLUGIN_NAME__/composer.lock'
         '__SW6_PLUGIN_NAME__/easy-coding-standard.php'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/node_modules/*'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/build/*'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.stylelintignore'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.eslintignore'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.eslintrc.js'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.babelrc.js'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.eslintrc'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.babelrc'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/.stylelintrc'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/stylelint.config.js'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/package.json'
         '__SW6_PLUGIN_NAME__/__SW6_ADMINISTRATION_ASSET_FOLDER__/package-lock.json'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/node_modules/*'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/build/*'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.stylelintignore'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.eslintignore'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.eslintrc.js'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.babelrc.js'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.eslintrc'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.babelrc'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.stylelintrc'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/stylelint.config.js'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/package.json'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/package-lock.json'
         '__SW6_PLUGIN_NAME__/src/Test/*'
         '__SW6_PLUGIN_NAME__/.editorconfig'
         '__SW6_PLUGIN_NAME__/.php_cs.dist'
         '__SW6_PLUGIN_NAME__/.php-cs-fixer.dist.php'
         '__SW6_PLUGIN_NAME__/.psh.xml.dist'
         '__SW6_PLUGIN_NAME__/.shopware-extension.yml'
         '__SW6_PLUGIN_NAME__/phpinsights.php'
         '__SW6_PLUGIN_NAME__/phpstan.neon.dist'
         '__SW6_PLUGIN_NAME__/phpstan-baseline.neon'
         '__SW6_PLUGIN_NAME__/psalm.xml'
         '__SW6_PLUGIN_NAME__/phpunit.dist.xml'
         '__SW6_PLUGIN_NAME__/phpunit.xml.dist'
         '__SW6_PLUGIN_NAME__/xdebug-filter.php'
         '__SW6_PLUGIN_NAME__/rector.php';
   else
      cd ../ && zip -FSr __SW6_PLUGIN_NAME__-__SW6_PLUGIN_VERSION__.zip __SW6_PLUGIN_NAME__ -x
         '__SW6_PLUGIN_NAME__/*.git/*'
         '*/*.zip'
         '*/*.tar'
         '*/*.tar.gz'
         '*/*.phar'
         '*/.gitignore'
         '__SW6_PLUGIN_NAME__/vendor/*'
         '__SW6_PLUGIN_NAME__/psh/*'
         '__SW6_PLUGIN_NAME__/store/*'
         '__SW6_PLUGIN_NAME__/rector.php'
         '__SW6_PLUGIN_NAME__/composer.lock'
         '__SW6_PLUGIN_NAME__/composer.json'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/node_modules/*'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/build/*'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.stylelintignore'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.eslintignore'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.eslintrc.js'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.babelrc.js'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/stylelint.config.js'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/.stylelintrc'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/package.json'
         '__SW6_PLUGIN_NAME__/__SW6_STOREFRONT_ASSET_FOLDER__/package-lock.json'
         '__SW6_PLUGIN_NAME__/.editorconfig'
         '__SW6_PLUGIN_NAME__/.shopware-extension.yml'
         '__SW6_PLUGIN_NAME__/.psh.xml.dist';
   fi




echo "HINT: Please check the content of the created ZIP archive! Override this sw6:release:zip command
   if you need to exclude additional files from the created ZIP archive!"
