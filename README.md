# Talis Composer repository

This is [composer](https://getcomposer.org/) repository to speed up installation of Talis packages.

To use it, add this repository to your `composer.json` file:

```json
    "repositories": [
        {
            "type": "composer",
            "url": "https://composer.talis.io/"
        }
    ]
```

Head over to https://composer.talis.io/ to browse available packages.

## Updating the repository

In case a new version of a package has been tagged, you should update the repository so you can use that new version.

Go to [Actions 🡪 Workflows 🡪 Publish to GitHub pages](https://github.com/talis/composer/actions?query=workflow%3A%22Publish+to+GitHub+pages%22) and click on `Run workflow` button to trigger it.
