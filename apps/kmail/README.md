<!-- This file has been generated from ./bin/build. If you want to edit it, edit "./apps/kmail/README.source.md" and then run ./bin/build again. -->
# colouredWeb/apps/kmail

Dark mode (themeS) for recieved messages in KMail.

KMail already does a pretty good job at re-colouring HTML emails to the system theme. But misses a lot of third-party email. This fixes that, and the miss-matches when only one of the background or foreground are set.

![Screenshot showing different themes in action.](misc/kmailDarkExample-withLabels.png)

## Requirements

### User

* make - To do the install/uninstall. (Can be done without it.)

### Developer

* make - To do the install/uninstall. (Can be done without it.)
* [colouredWeb](https://github.com/ksandom/colouredWeb) - To generate the CSS stylesheet.
* [shest](https://github.com/ksandom/shest) - To run the tests. There is a very basic test written in bash intended as a sanity check before installing.

## Install

### Install - everything

1. Install it.
    ```bash
    sudo make install
    ```
1. Create the mail filter as described below in [Install - Filter method only](#install---filter-method-only).

### Install - In-place method only

1. Install it.
    ```bash
    sudo make install-inplace
    ```

### Install - Filter method only

1. Get the basics installed.
    ```bash
    sudo make install-filter
    ```
1. Create a mail filter to run the script when new mail comes in.
    1. "Settings"
    1. "Configure filters..."
    1. Create a new filter.
    1. "Match all messages" should be selected.
    1. Under "Filter Actions"
        1. Select "Pipe Through"
        1. Enter `/usr/bin/insertSheet`

Did it work? If you're not sure,

1. Select an HTML message.
1. Press CTRL + J. (You won't normally need to do this for new email, but this will manually trigger the filter, which is excellent for debugging whether it's working, and for applying it to old email.)
1. Make sure it is showing HTML.
1. If you're still not seeing a change, press "v" to view source.
1. Click "HTML Source".
1. Look for `<head>`. Directly after it, you should see `<!-- Inserted stylesheet using kmailMessageDarkMode at` then the timestamp. A little after that is the magic that makes it all work.

## Want to show off?

```bash
sudo ./bin/showOff
```

Then open up the emails and see what happens ;)

After you're done, run `sudo ./bin/installSheet` to restore it to the default dark theme.

## Uninstall - Everything

This will run uninstall both the in-place method, and the filter method. It is safe to re-run this even if they aren't installed.

```bash
sudo make uninstall
```

## Uninstall - In-place method

This will restore the original stylesheet to it's original state, without the changes we made.

```bash
sudo make uninstall-inplace
```

## Uninstall - Filter method

This will remove the script and the stylesheet, which will cause kmail to revert to the formatting it would have otherwise used. It will not remove the seed from the emails that have already been processed.

1. Uninstall the script and sheet.
    ```bash
    sudo make uninstall-filter
    ```
1. Remove the filter from kmail. (It will silently fail if the script isn't there, but this is nice to do to keep things clean.)
    1. "Settings"
    1. "Configure filters..."
    1. Select the filter. It will look something like `<<body>>:.` and will have `Pipe Through` `/usr/bin/insertSheet` under "Filter Actions".
    1. Click the "Delete" button below. It will looks like a red rubbish bin.

## How it works

I've revived [one of my old projects](https://github.com/ksandom/colouredWeb) to generate various CSS stylesheets. These are committed into this repo, so there's no need to have that dependency, but you can.

At that point we just need to make kmail use it using one of the two methods below:

* The custom stylesheet is appended to an existing stylesheet used for formatting message details in the header of the email output. If it successfully installs, there's very little to go wrong with it, but it could be fragile as kmail evolves and things need to get changed. )
* "Filter" - My first attempt. There's a bit more set-up involved, and sometimes it's frustrating to work out why something isn't working, but there's more power available to the user to be able to fix things when things go wrong, without needing to dive into code.
    * A script and a CSS file are installed.
    * You create a mail filter that
        * Matches every message.
        * Modifies the message on your local machine.
            * Optional (default): Inserts a reference to the stylesheet into the message.
                * This modification will remain after uninstallion, but the changes will not be visible since the stylesheet will no longer be present.
                * I've laid the ground work so that this can be removed if there is a need for it.
            * Optional (default): Removes hard-coded colours.
                * This caters to **all** of the edge cases that I've found so far.
                * I don't yet know of any way to undo this, should you want to.

Right now, the default method is to install both methods. This gives us the simplicity of the inPlace method, and the versatility of the filter method.


## Preview of the themes

|  | black1 | black2 | black3 | bright | grey1 | grey2 | grey3 |
| --- |:---:|:---:|:---:|:---:|:---:|:---:|:---: |
| 0000ff | [![Preview of the theme black1-0000ff.](previews/black1-0000ff.svg)](sheets/black1-0000ff.css)| [![Preview of the theme black2-0000ff.](previews/black2-0000ff.svg)](sheets/black2-0000ff.css)| [![Preview of the theme black3-0000ff.](previews/black3-0000ff.svg)](sheets/black3-0000ff.css)| [![Preview of the theme bright-0000ff.](previews/bright-0000ff.svg)](sheets/bright-0000ff.css)| [![Preview of the theme grey1-0000ff.](previews/grey1-0000ff.svg)](sheets/grey1-0000ff.css)| [![Preview of the theme grey2-0000ff.](previews/grey2-0000ff.svg)](sheets/grey2-0000ff.css)| [![Preview of the theme grey3-0000ff.](previews/grey3-0000ff.svg)](sheets/grey3-0000ff.css) |
| 00eeff | [![Preview of the theme black1-00eeff.](previews/black1-00eeff.svg)](sheets/black1-00eeff.css)| [![Preview of the theme black2-00eeff.](previews/black2-00eeff.svg)](sheets/black2-00eeff.css)| [![Preview of the theme black3-00eeff.](previews/black3-00eeff.svg)](sheets/black3-00eeff.css)| [![Preview of the theme bright-00eeff.](previews/bright-00eeff.svg)](sheets/bright-00eeff.css)| [![Preview of the theme grey1-00eeff.](previews/grey1-00eeff.svg)](sheets/grey1-00eeff.css)| [![Preview of the theme grey2-00eeff.](previews/grey2-00eeff.svg)](sheets/grey2-00eeff.css)| [![Preview of the theme grey3-00eeff.](previews/grey3-00eeff.svg)](sheets/grey3-00eeff.css) |
| 00ff00 | [![Preview of the theme black1-00ff00.](previews/black1-00ff00.svg)](sheets/black1-00ff00.css)| [![Preview of the theme black2-00ff00.](previews/black2-00ff00.svg)](sheets/black2-00ff00.css)| [![Preview of the theme black3-00ff00.](previews/black3-00ff00.svg)](sheets/black3-00ff00.css)| [![Preview of the theme bright-00ff00.](previews/bright-00ff00.svg)](sheets/bright-00ff00.css)| [![Preview of the theme grey1-00ff00.](previews/grey1-00ff00.svg)](sheets/grey1-00ff00.css)| [![Preview of the theme grey2-00ff00.](previews/grey2-00ff00.svg)](sheets/grey2-00ff00.css)| [![Preview of the theme grey3-00ff00.](previews/grey3-00ff00.svg)](sheets/grey3-00ff00.css) |
| 00ffee | [![Preview of the theme black1-00ffee.](previews/black1-00ffee.svg)](sheets/black1-00ffee.css)| [![Preview of the theme black2-00ffee.](previews/black2-00ffee.svg)](sheets/black2-00ffee.css)| [![Preview of the theme black3-00ffee.](previews/black3-00ffee.svg)](sheets/black3-00ffee.css)| [![Preview of the theme bright-00ffee.](previews/bright-00ffee.svg)](sheets/bright-00ffee.css)| [![Preview of the theme grey1-00ffee.](previews/grey1-00ffee.svg)](sheets/grey1-00ffee.css)| [![Preview of the theme grey2-00ffee.](previews/grey2-00ffee.svg)](sheets/grey2-00ffee.css)| [![Preview of the theme grey3-00ffee.](previews/grey3-00ffee.svg)](sheets/grey3-00ffee.css) |
| 00ffff | [![Preview of the theme black1-00ffff.](previews/black1-00ffff.svg)](sheets/black1-00ffff.css)| [![Preview of the theme black2-00ffff.](previews/black2-00ffff.svg)](sheets/black2-00ffff.css)| [![Preview of the theme black3-00ffff.](previews/black3-00ffff.svg)](sheets/black3-00ffff.css)| [![Preview of the theme bright-00ffff.](previews/bright-00ffff.svg)](sheets/bright-00ffff.css)| [![Preview of the theme grey1-00ffff.](previews/grey1-00ffff.svg)](sheets/grey1-00ffff.css)| [![Preview of the theme grey2-00ffff.](previews/grey2-00ffff.svg)](sheets/grey2-00ffff.css)| [![Preview of the theme grey3-00ffff.](previews/grey3-00ffff.svg)](sheets/grey3-00ffff.css) |
| 33eeff | [![Preview of the theme black1-33eeff.](previews/black1-33eeff.svg)](sheets/black1-33eeff.css)| [![Preview of the theme black2-33eeff.](previews/black2-33eeff.svg)](sheets/black2-33eeff.css)| [![Preview of the theme black3-33eeff.](previews/black3-33eeff.svg)](sheets/black3-33eeff.css)| [![Preview of the theme bright-33eeff.](previews/bright-33eeff.svg)](sheets/bright-33eeff.css)| [![Preview of the theme grey1-33eeff.](previews/grey1-33eeff.svg)](sheets/grey1-33eeff.css)| [![Preview of the theme grey2-33eeff.](previews/grey2-33eeff.svg)](sheets/grey2-33eeff.css)| [![Preview of the theme grey3-33eeff.](previews/grey3-33eeff.svg)](sheets/grey3-33eeff.css) |
| 33ffee | [![Preview of the theme black1-33ffee.](previews/black1-33ffee.svg)](sheets/black1-33ffee.css)| [![Preview of the theme black2-33ffee.](previews/black2-33ffee.svg)](sheets/black2-33ffee.css)| [![Preview of the theme black3-33ffee.](previews/black3-33ffee.svg)](sheets/black3-33ffee.css)| [![Preview of the theme bright-33ffee.](previews/bright-33ffee.svg)](sheets/bright-33ffee.css)| [![Preview of the theme grey1-33ffee.](previews/grey1-33ffee.svg)](sheets/grey1-33ffee.css)| [![Preview of the theme grey2-33ffee.](previews/grey2-33ffee.svg)](sheets/grey2-33ffee.css)| [![Preview of the theme grey3-33ffee.](previews/grey3-33ffee.svg)](sheets/grey3-33ffee.css) |
| 66eeff | [![Preview of the theme black1-66eeff.](previews/black1-66eeff.svg)](sheets/black1-66eeff.css)| [![Preview of the theme black2-66eeff.](previews/black2-66eeff.svg)](sheets/black2-66eeff.css)| [![Preview of the theme black3-66eeff.](previews/black3-66eeff.svg)](sheets/black3-66eeff.css)| [![Preview of the theme bright-66eeff.](previews/bright-66eeff.svg)](sheets/bright-66eeff.css)| [![Preview of the theme grey1-66eeff.](previews/grey1-66eeff.svg)](sheets/grey1-66eeff.css)| [![Preview of the theme grey2-66eeff.](previews/grey2-66eeff.svg)](sheets/grey2-66eeff.css)| [![Preview of the theme grey3-66eeff.](previews/grey3-66eeff.svg)](sheets/grey3-66eeff.css) |
| 66ffee | [![Preview of the theme black1-66ffee.](previews/black1-66ffee.svg)](sheets/black1-66ffee.css)| [![Preview of the theme black2-66ffee.](previews/black2-66ffee.svg)](sheets/black2-66ffee.css)| [![Preview of the theme black3-66ffee.](previews/black3-66ffee.svg)](sheets/black3-66ffee.css)| [![Preview of the theme bright-66ffee.](previews/bright-66ffee.svg)](sheets/bright-66ffee.css)| [![Preview of the theme grey1-66ffee.](previews/grey1-66ffee.svg)](sheets/grey1-66ffee.css)| [![Preview of the theme grey2-66ffee.](previews/grey2-66ffee.svg)](sheets/grey2-66ffee.css)| [![Preview of the theme grey3-66ffee.](previews/grey3-66ffee.svg)](sheets/grey3-66ffee.css) |
| 99eeff | [![Preview of the theme black1-99eeff.](previews/black1-99eeff.svg)](sheets/black1-99eeff.css)| [![Preview of the theme black2-99eeff.](previews/black2-99eeff.svg)](sheets/black2-99eeff.css)| [![Preview of the theme black3-99eeff.](previews/black3-99eeff.svg)](sheets/black3-99eeff.css)| [![Preview of the theme bright-99eeff.](previews/bright-99eeff.svg)](sheets/bright-99eeff.css)| [![Preview of the theme grey1-99eeff.](previews/grey1-99eeff.svg)](sheets/grey1-99eeff.css)| [![Preview of the theme grey2-99eeff.](previews/grey2-99eeff.svg)](sheets/grey2-99eeff.css)| [![Preview of the theme grey3-99eeff.](previews/grey3-99eeff.svg)](sheets/grey3-99eeff.css) |
| 99ffee | [![Preview of the theme black1-99ffee.](previews/black1-99ffee.svg)](sheets/black1-99ffee.css)| [![Preview of the theme black2-99ffee.](previews/black2-99ffee.svg)](sheets/black2-99ffee.css)| [![Preview of the theme black3-99ffee.](previews/black3-99ffee.svg)](sheets/black3-99ffee.css)| [![Preview of the theme bright-99ffee.](previews/bright-99ffee.svg)](sheets/bright-99ffee.css)| [![Preview of the theme grey1-99ffee.](previews/grey1-99ffee.svg)](sheets/grey1-99ffee.css)| [![Preview of the theme grey2-99ffee.](previews/grey2-99ffee.svg)](sheets/grey2-99ffee.css)| [![Preview of the theme grey3-99ffee.](previews/grey3-99ffee.svg)](sheets/grey3-99ffee.css) |
| 99ffff | [![Preview of the theme black1-99ffff.](previews/black1-99ffff.svg)](sheets/black1-99ffff.css)| [![Preview of the theme black2-99ffff.](previews/black2-99ffff.svg)](sheets/black2-99ffff.css)| [![Preview of the theme black3-99ffff.](previews/black3-99ffff.svg)](sheets/black3-99ffff.css)| [![Preview of the theme bright-99ffff.](previews/bright-99ffff.svg)](sheets/bright-99ffff.css)| [![Preview of the theme grey1-99ffff.](previews/grey1-99ffff.svg)](sheets/grey1-99ffff.css)| [![Preview of the theme grey2-99ffff.](previews/grey2-99ffff.svg)](sheets/grey2-99ffff.css)| [![Preview of the theme grey3-99ffff.](previews/grey3-99ffff.svg)](sheets/grey3-99ffff.css) |
| eeff00 | [![Preview of the theme black1-eeff00.](previews/black1-eeff00.svg)](sheets/black1-eeff00.css)| [![Preview of the theme black2-eeff00.](previews/black2-eeff00.svg)](sheets/black2-eeff00.css)| [![Preview of the theme black3-eeff00.](previews/black3-eeff00.svg)](sheets/black3-eeff00.css)| [![Preview of the theme bright-eeff00.](previews/bright-eeff00.svg)](sheets/bright-eeff00.css)| [![Preview of the theme grey1-eeff00.](previews/grey1-eeff00.svg)](sheets/grey1-eeff00.css)| [![Preview of the theme grey2-eeff00.](previews/grey2-eeff00.svg)](sheets/grey2-eeff00.css)| [![Preview of the theme grey3-eeff00.](previews/grey3-eeff00.svg)](sheets/grey3-eeff00.css) |
| eeff33 | [![Preview of the theme black1-eeff33.](previews/black1-eeff33.svg)](sheets/black1-eeff33.css)| [![Preview of the theme black2-eeff33.](previews/black2-eeff33.svg)](sheets/black2-eeff33.css)| [![Preview of the theme black3-eeff33.](previews/black3-eeff33.svg)](sheets/black3-eeff33.css)| [![Preview of the theme bright-eeff33.](previews/bright-eeff33.svg)](sheets/bright-eeff33.css)| [![Preview of the theme grey1-eeff33.](previews/grey1-eeff33.svg)](sheets/grey1-eeff33.css)| [![Preview of the theme grey2-eeff33.](previews/grey2-eeff33.svg)](sheets/grey2-eeff33.css)| [![Preview of the theme grey3-eeff33.](previews/grey3-eeff33.svg)](sheets/grey3-eeff33.css) |
| eeff66 | [![Preview of the theme black1-eeff66.](previews/black1-eeff66.svg)](sheets/black1-eeff66.css)| [![Preview of the theme black2-eeff66.](previews/black2-eeff66.svg)](sheets/black2-eeff66.css)| [![Preview of the theme black3-eeff66.](previews/black3-eeff66.svg)](sheets/black3-eeff66.css)| [![Preview of the theme bright-eeff66.](previews/bright-eeff66.svg)](sheets/bright-eeff66.css)| [![Preview of the theme grey1-eeff66.](previews/grey1-eeff66.svg)](sheets/grey1-eeff66.css)| [![Preview of the theme grey2-eeff66.](previews/grey2-eeff66.svg)](sheets/grey2-eeff66.css)| [![Preview of the theme grey3-eeff66.](previews/grey3-eeff66.svg)](sheets/grey3-eeff66.css) |
| eeff99 | [![Preview of the theme black1-eeff99.](previews/black1-eeff99.svg)](sheets/black1-eeff99.css)| [![Preview of the theme black2-eeff99.](previews/black2-eeff99.svg)](sheets/black2-eeff99.css)| [![Preview of the theme black3-eeff99.](previews/black3-eeff99.svg)](sheets/black3-eeff99.css)| [![Preview of the theme bright-eeff99.](previews/bright-eeff99.svg)](sheets/bright-eeff99.css)| [![Preview of the theme grey1-eeff99.](previews/grey1-eeff99.svg)](sheets/grey1-eeff99.css)| [![Preview of the theme grey2-eeff99.](previews/grey2-eeff99.svg)](sheets/grey2-eeff99.css)| [![Preview of the theme grey3-eeff99.](previews/grey3-eeff99.svg)](sheets/grey3-eeff99.css) |
| ff0000 | [![Preview of the theme black1-ff0000.](previews/black1-ff0000.svg)](sheets/black1-ff0000.css)| [![Preview of the theme black2-ff0000.](previews/black2-ff0000.svg)](sheets/black2-ff0000.css)| [![Preview of the theme black3-ff0000.](previews/black3-ff0000.svg)](sheets/black3-ff0000.css)| [![Preview of the theme bright-ff0000.](previews/bright-ff0000.svg)](sheets/bright-ff0000.css)| [![Preview of the theme grey1-ff0000.](previews/grey1-ff0000.svg)](sheets/grey1-ff0000.css)| [![Preview of the theme grey2-ff0000.](previews/grey2-ff0000.svg)](sheets/grey2-ff0000.css)| [![Preview of the theme grey3-ff0000.](previews/grey3-ff0000.svg)](sheets/grey3-ff0000.css) |
| ff00ee | [![Preview of the theme black1-ff00ee.](previews/black1-ff00ee.svg)](sheets/black1-ff00ee.css)| [![Preview of the theme black2-ff00ee.](previews/black2-ff00ee.svg)](sheets/black2-ff00ee.css)| [![Preview of the theme black3-ff00ee.](previews/black3-ff00ee.svg)](sheets/black3-ff00ee.css)| [![Preview of the theme bright-ff00ee.](previews/bright-ff00ee.svg)](sheets/bright-ff00ee.css)| [![Preview of the theme grey1-ff00ee.](previews/grey1-ff00ee.svg)](sheets/grey1-ff00ee.css)| [![Preview of the theme grey2-ff00ee.](previews/grey2-ff00ee.svg)](sheets/grey2-ff00ee.css)| [![Preview of the theme grey3-ff00ee.](previews/grey3-ff00ee.svg)](sheets/grey3-ff00ee.css) |
| ff00ff | [![Preview of the theme black1-ff00ff.](previews/black1-ff00ff.svg)](sheets/black1-ff00ff.css)| [![Preview of the theme black2-ff00ff.](previews/black2-ff00ff.svg)](sheets/black2-ff00ff.css)| [![Preview of the theme black3-ff00ff.](previews/black3-ff00ff.svg)](sheets/black3-ff00ff.css)| [![Preview of the theme bright-ff00ff.](previews/bright-ff00ff.svg)](sheets/bright-ff00ff.css)| [![Preview of the theme grey1-ff00ff.](previews/grey1-ff00ff.svg)](sheets/grey1-ff00ff.css)| [![Preview of the theme grey2-ff00ff.](previews/grey2-ff00ff.svg)](sheets/grey2-ff00ff.css)| [![Preview of the theme grey3-ff00ff.](previews/grey3-ff00ff.svg)](sheets/grey3-ff00ff.css) |
| ff33ee | [![Preview of the theme black1-ff33ee.](previews/black1-ff33ee.svg)](sheets/black1-ff33ee.css)| [![Preview of the theme black2-ff33ee.](previews/black2-ff33ee.svg)](sheets/black2-ff33ee.css)| [![Preview of the theme black3-ff33ee.](previews/black3-ff33ee.svg)](sheets/black3-ff33ee.css)| [![Preview of the theme bright-ff33ee.](previews/bright-ff33ee.svg)](sheets/bright-ff33ee.css)| [![Preview of the theme grey1-ff33ee.](previews/grey1-ff33ee.svg)](sheets/grey1-ff33ee.css)| [![Preview of the theme grey2-ff33ee.](previews/grey2-ff33ee.svg)](sheets/grey2-ff33ee.css)| [![Preview of the theme grey3-ff33ee.](previews/grey3-ff33ee.svg)](sheets/grey3-ff33ee.css) |
| ff66ee | [![Preview of the theme black1-ff66ee.](previews/black1-ff66ee.svg)](sheets/black1-ff66ee.css)| [![Preview of the theme black2-ff66ee.](previews/black2-ff66ee.svg)](sheets/black2-ff66ee.css)| [![Preview of the theme black3-ff66ee.](previews/black3-ff66ee.svg)](sheets/black3-ff66ee.css)| [![Preview of the theme bright-ff66ee.](previews/bright-ff66ee.svg)](sheets/bright-ff66ee.css)| [![Preview of the theme grey1-ff66ee.](previews/grey1-ff66ee.svg)](sheets/grey1-ff66ee.css)| [![Preview of the theme grey2-ff66ee.](previews/grey2-ff66ee.svg)](sheets/grey2-ff66ee.css)| [![Preview of the theme grey3-ff66ee.](previews/grey3-ff66ee.svg)](sheets/grey3-ff66ee.css) |
| ff99ee | [![Preview of the theme black1-ff99ee.](previews/black1-ff99ee.svg)](sheets/black1-ff99ee.css)| [![Preview of the theme black2-ff99ee.](previews/black2-ff99ee.svg)](sheets/black2-ff99ee.css)| [![Preview of the theme black3-ff99ee.](previews/black3-ff99ee.svg)](sheets/black3-ff99ee.css)| [![Preview of the theme bright-ff99ee.](previews/bright-ff99ee.svg)](sheets/bright-ff99ee.css)| [![Preview of the theme grey1-ff99ee.](previews/grey1-ff99ee.svg)](sheets/grey1-ff99ee.css)| [![Preview of the theme grey2-ff99ee.](previews/grey2-ff99ee.svg)](sheets/grey2-ff99ee.css)| [![Preview of the theme grey3-ff99ee.](previews/grey3-ff99ee.svg)](sheets/grey3-ff99ee.css) |
| ff99ff | [![Preview of the theme black1-ff99ff.](previews/black1-ff99ff.svg)](sheets/black1-ff99ff.css)| [![Preview of the theme black2-ff99ff.](previews/black2-ff99ff.svg)](sheets/black2-ff99ff.css)| [![Preview of the theme black3-ff99ff.](previews/black3-ff99ff.svg)](sheets/black3-ff99ff.css)| [![Preview of the theme bright-ff99ff.](previews/bright-ff99ff.svg)](sheets/bright-ff99ff.css)| [![Preview of the theme grey1-ff99ff.](previews/grey1-ff99ff.svg)](sheets/grey1-ff99ff.css)| [![Preview of the theme grey2-ff99ff.](previews/grey2-ff99ff.svg)](sheets/grey2-ff99ff.css)| [![Preview of the theme grey3-ff99ff.](previews/grey3-ff99ff.svg)](sheets/grey3-ff99ff.css) |
| ffee00 | [![Preview of the theme black1-ffee00.](previews/black1-ffee00.svg)](sheets/black1-ffee00.css)| [![Preview of the theme black2-ffee00.](previews/black2-ffee00.svg)](sheets/black2-ffee00.css)| [![Preview of the theme black3-ffee00.](previews/black3-ffee00.svg)](sheets/black3-ffee00.css)| [![Preview of the theme bright-ffee00.](previews/bright-ffee00.svg)](sheets/bright-ffee00.css)| [![Preview of the theme grey1-ffee00.](previews/grey1-ffee00.svg)](sheets/grey1-ffee00.css)| [![Preview of the theme grey2-ffee00.](previews/grey2-ffee00.svg)](sheets/grey2-ffee00.css)| [![Preview of the theme grey3-ffee00.](previews/grey3-ffee00.svg)](sheets/grey3-ffee00.css) |
| ffee33 | [![Preview of the theme black1-ffee33.](previews/black1-ffee33.svg)](sheets/black1-ffee33.css)| [![Preview of the theme black2-ffee33.](previews/black2-ffee33.svg)](sheets/black2-ffee33.css)| [![Preview of the theme black3-ffee33.](previews/black3-ffee33.svg)](sheets/black3-ffee33.css)| [![Preview of the theme bright-ffee33.](previews/bright-ffee33.svg)](sheets/bright-ffee33.css)| [![Preview of the theme grey1-ffee33.](previews/grey1-ffee33.svg)](sheets/grey1-ffee33.css)| [![Preview of the theme grey2-ffee33.](previews/grey2-ffee33.svg)](sheets/grey2-ffee33.css)| [![Preview of the theme grey3-ffee33.](previews/grey3-ffee33.svg)](sheets/grey3-ffee33.css) |
| ffee66 | [![Preview of the theme black1-ffee66.](previews/black1-ffee66.svg)](sheets/black1-ffee66.css)| [![Preview of the theme black2-ffee66.](previews/black2-ffee66.svg)](sheets/black2-ffee66.css)| [![Preview of the theme black3-ffee66.](previews/black3-ffee66.svg)](sheets/black3-ffee66.css)| [![Preview of the theme bright-ffee66.](previews/bright-ffee66.svg)](sheets/bright-ffee66.css)| [![Preview of the theme grey1-ffee66.](previews/grey1-ffee66.svg)](sheets/grey1-ffee66.css)| [![Preview of the theme grey2-ffee66.](previews/grey2-ffee66.svg)](sheets/grey2-ffee66.css)| [![Preview of the theme grey3-ffee66.](previews/grey3-ffee66.svg)](sheets/grey3-ffee66.css) |
| ffee99 | [![Preview of the theme black1-ffee99.](previews/black1-ffee99.svg)](sheets/black1-ffee99.css)| [![Preview of the theme black2-ffee99.](previews/black2-ffee99.svg)](sheets/black2-ffee99.css)| [![Preview of the theme black3-ffee99.](previews/black3-ffee99.svg)](sheets/black3-ffee99.css)| [![Preview of the theme bright-ffee99.](previews/bright-ffee99.svg)](sheets/bright-ffee99.css)| [![Preview of the theme grey1-ffee99.](previews/grey1-ffee99.svg)](sheets/grey1-ffee99.css)| [![Preview of the theme grey2-ffee99.](previews/grey2-ffee99.svg)](sheets/grey2-ffee99.css)| [![Preview of the theme grey3-ffee99.](previews/grey3-ffee99.svg)](sheets/grey3-ffee99.css) |
| ffff00 | [![Preview of the theme black1-ffff00.](previews/black1-ffff00.svg)](sheets/black1-ffff00.css)| [![Preview of the theme black2-ffff00.](previews/black2-ffff00.svg)](sheets/black2-ffff00.css)| [![Preview of the theme black3-ffff00.](previews/black3-ffff00.svg)](sheets/black3-ffff00.css)| [![Preview of the theme bright-ffff00.](previews/bright-ffff00.svg)](sheets/bright-ffff00.css)| [![Preview of the theme grey1-ffff00.](previews/grey1-ffff00.svg)](sheets/grey1-ffff00.css)| [![Preview of the theme grey2-ffff00.](previews/grey2-ffff00.svg)](sheets/grey2-ffff00.css)| [![Preview of the theme grey3-ffff00.](previews/grey3-ffff00.svg)](sheets/grey3-ffff00.css) |
| ffff99 | [![Preview of the theme black1-ffff99.](previews/black1-ffff99.svg)](sheets/black1-ffff99.css)| [![Preview of the theme black2-ffff99.](previews/black2-ffff99.svg)](sheets/black2-ffff99.css)| [![Preview of the theme black3-ffff99.](previews/black3-ffff99.svg)](sheets/black3-ffff99.css)| [![Preview of the theme bright-ffff99.](previews/bright-ffff99.svg)](sheets/bright-ffff99.css)| [![Preview of the theme grey1-ffff99.](previews/grey1-ffff99.svg)](sheets/grey1-ffff99.css)| [![Preview of the theme grey2-ffff99.](previews/grey2-ffff99.svg)](sheets/grey2-ffff99.css)| [![Preview of the theme grey3-ffff99.](previews/grey3-ffff99.svg)](sheets/grey3-ffff99.css) |
| ffffff | [![Preview of the theme black1-ffffff.](previews/black1-ffffff.svg)](sheets/black1-ffffff.css)| [![Preview of the theme black2-ffffff.](previews/black2-ffffff.svg)](sheets/black2-ffffff.css)| [![Preview of the theme black3-ffffff.](previews/black3-ffffff.svg)](sheets/black3-ffffff.css)| [![Preview of the theme bright-ffffff.](previews/bright-ffffff.svg)](sheets/bright-ffffff.css)| [![Preview of the theme grey1-ffffff.](previews/grey1-ffffff.svg)](sheets/grey1-ffffff.css)| [![Preview of the theme grey2-ffffff.](previews/grey2-ffffff.svg)](sheets/grey2-ffffff.css)| [![Preview of the theme grey3-ffffff.](previews/grey3-ffffff.svg)](sheets/grey3-ffffff.css) |


