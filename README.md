# PSH Command Library

This package provides a library of useful generic [PSH](https://github.com/shopwareLabs/psh) Commands when developing plugins for [Shopware](https://www.shopware.com/de/) 6.

## Installation

Use [composer](https://getcomposer.org/) to require this package as a development dependency in your Shopware plugin:

```bash
composer require mediameets/psh-commands --dev
```

### Use library **with existing** psh config

Add all environments and placeholders from the `.psh.xml.dist` file to your psh config file.

### Use library **without existing** psh config

Copy the `.psh.xml.dist` file into your plugin root folder:

```bash
cp vendor/mediameets/psh-commands/.psh.xml.dist .psh.xml.dist
```

In the fresh copied `.psh.xml.dist ` adjust the values of the placeholders. See configuration for more details.

## Configuration

| Name | Description | Default |
| ---|:---:|:---:|
| PLUGIN_NAME | The technical name of your Shopware plugin. | basename $PWD |
| SW6_ADMINISTRATION_ASSET_FOLDER | Folder of the administration assets of a Shopware 6 Plugin. | src/Resources/app/administration |
| SW6_STOREFRONT_ASSET_FOLDER | Folder of the storefront assets of a Shopware 6 Plugin. | src/Resources/app/storefront |

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

It is possible to override all of the commands in this library. One situation where you want to override the command is for example `sw6:release:zip`. This command creates a ZIP archive of your plugin folder and excludes unwanted files like composer.lock. So if you want to modify the excluded file list you need to override this command.

Do the following steps:

1. To override the command create a folder for example `psh/sw6/release/actions` in your plugins root folder.

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
