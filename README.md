# PSH Command Library

This package provides a library of useful generic [PSH](https://github.com/shopwareLabs/psh) Commands when developing plugins and apps for [Shopware](https://www.shopware.com/de/) 6.

## Installation

Use [composer](https://getcomposer.org/) to require this package as a development dependency in your Shopware plugin/app:

```bash
composer require mediameets/psh-commands --dev
```

### Use library **with existing** psh config

Add all environments and placeholders from the `.psh.xml.dist` file to your psh config file.

### Use library **without existing** psh config

Copy the `.psh.xml.dist` file into your plugin/app root folder:

```bash
cp vendor/mediameets/psh-commands/.psh.xml.dist .psh.xml.dist
```

Usually no further configuration is necessary. See configuration for more details.

## Configuration for a Shopware 6 plugin or app

| Name | Description | Default |
| ---|---|---|
| SW6_PLUGIN_NAME | The technical name of your Shopware plugin/app. | basename $PWD |
| SW6_IS_APP | Holds information if package is a Shopware app (true) or plugin (false). | php -f vendor/mediameets/psh-commands/sw6/scripts/check-is-app.php |
| SW6_PLUGIN_VERSION | Version of the Shopware 6 plugin/app. | php -f vendor/mediameets/psh-commands/sw6/scripts/get-plugin-version.php |
| SW6_ADMINISTRATION_ASSET_FOLDER | Folder of the administration assets of a Shopware 6 plugin. | php -f vendor/mediameets/psh-commands/sw6/scripts/get-administration-asset-path.php |
| SW6_STOREFRONT_ASSET_FOLDER | Folder of the storefront assets of a Shopware 6 plugin/app. | php -f vendor/mediameets/psh-commands/sw6/scripts/get-storefront-asset-path.php |

## Usage

Now you can use the commands via global installed psh:

```bash
psh
```

You could also require the psh locally:

```bash
composer require shopware/psh --dev
```

and use it like this:

```bash
vendor/bin/psh
```

### Overriding

It is possible to override all of the commands in this library. One situation where you want to override the command is for example `sw6:release:zip`. This command creates a ZIP archive of your plugin/app folder and excludes unwanted files like composer.lock. So if you want to modify the excluded file list you need to override this command.

Do the following steps:

1. To override the command create a folder for example `psh/sw6/release/actions` in your plugins/apps root folder.

2. Then copy the `sw6:release:zip` action (shell script) and make the desired changes:

    ```bash
    cp vendor/mediameets/psh-commands/sw6/release/actions/zip.sh psh/sw6/release/actions/zip.sh
    ```

3. Last but not least add the new path to your created folder to the `.psh.xml.dist` configuration file in the overriden environment:

    ```xml
    <environment name="sw6:release">
        <path>vendor/mediameets/psh-commands/sw6/release/actions</path>
        <path>psh/sw6/release/actions</path>
    </environment>
    ```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
