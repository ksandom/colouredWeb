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

|  | cwBlack | cwBlackBlack | cwDark | cwBright | grey1 | grey2 | grey3 |
| --- |:---:|:---:|:---:|:---:|:---:|:---:|:---: |
| 0000ff | [![Preview of the theme cwBlack-0000ff.](previews/cwBlack-0000ff.svg)](sheets/cwBlack-0000ff.css)| [![Preview of the theme cwBlackBlack-0000ff.](previews/cwBlackBlack-0000ff.svg)](sheets/cwBlackBlack-0000ff.css)| [![Preview of the theme cwDark-0000ff.](previews/cwDark-0000ff.svg)](sheets/cwDark-0000ff.css)| [![Preview of the theme cwBright-0000ff.](previews/cwBright-0000ff.svg)](sheets/cwBright-0000ff.css)| [![Preview of the theme grey1-0000ff.](previews/grey1-0000ff.svg)](sheets/grey1-0000ff.css)| [![Preview of the theme grey2-0000ff.](previews/grey2-0000ff.svg)](sheets/grey2-0000ff.css)| [![Preview of the theme grey3-0000ff.](previews/grey3-0000ff.svg)](sheets/grey3-0000ff.css) |
| 00eeff | [![Preview of the theme cwBlack-00eeff.](previews/cwBlack-00eeff.svg)](sheets/cwBlack-00eeff.css)| [![Preview of the theme cwBlackBlack-00eeff.](previews/cwBlackBlack-00eeff.svg)](sheets/cwBlackBlack-00eeff.css)| [![Preview of the theme cwDark-00eeff.](previews/cwDark-00eeff.svg)](sheets/cwDark-00eeff.css)| [![Preview of the theme cwBright-00eeff.](previews/cwBright-00eeff.svg)](sheets/cwBright-00eeff.css)| [![Preview of the theme grey1-00eeff.](previews/grey1-00eeff.svg)](sheets/grey1-00eeff.css)| [![Preview of the theme grey2-00eeff.](previews/grey2-00eeff.svg)](sheets/grey2-00eeff.css)| [![Preview of the theme grey3-00eeff.](previews/grey3-00eeff.svg)](sheets/grey3-00eeff.css) |
| 00ff00 | [![Preview of the theme cwBlack-00ff00.](previews/cwBlack-00ff00.svg)](sheets/cwBlack-00ff00.css)| [![Preview of the theme cwBlackBlack-00ff00.](previews/cwBlackBlack-00ff00.svg)](sheets/cwBlackBlack-00ff00.css)| [![Preview of the theme cwDark-00ff00.](previews/cwDark-00ff00.svg)](sheets/cwDark-00ff00.css)| [![Preview of the theme cwBright-00ff00.](previews/cwBright-00ff00.svg)](sheets/cwBright-00ff00.css)| [![Preview of the theme grey1-00ff00.](previews/grey1-00ff00.svg)](sheets/grey1-00ff00.css)| [![Preview of the theme grey2-00ff00.](previews/grey2-00ff00.svg)](sheets/grey2-00ff00.css)| [![Preview of the theme grey3-00ff00.](previews/grey3-00ff00.svg)](sheets/grey3-00ff00.css) |
| 00ffee | [![Preview of the theme cwBlack-00ffee.](previews/cwBlack-00ffee.svg)](sheets/cwBlack-00ffee.css)| [![Preview of the theme cwBlackBlack-00ffee.](previews/cwBlackBlack-00ffee.svg)](sheets/cwBlackBlack-00ffee.css)| [![Preview of the theme cwDark-00ffee.](previews/cwDark-00ffee.svg)](sheets/cwDark-00ffee.css)| [![Preview of the theme cwBright-00ffee.](previews/cwBright-00ffee.svg)](sheets/cwBright-00ffee.css)| [![Preview of the theme grey1-00ffee.](previews/grey1-00ffee.svg)](sheets/grey1-00ffee.css)| [![Preview of the theme grey2-00ffee.](previews/grey2-00ffee.svg)](sheets/grey2-00ffee.css)| [![Preview of the theme grey3-00ffee.](previews/grey3-00ffee.svg)](sheets/grey3-00ffee.css) |
| 00ffff | [![Preview of the theme cwBlack-00ffff.](previews/cwBlack-00ffff.svg)](sheets/cwBlack-00ffff.css)| [![Preview of the theme cwBlackBlack-00ffff.](previews/cwBlackBlack-00ffff.svg)](sheets/cwBlackBlack-00ffff.css)| [![Preview of the theme cwDark-00ffff.](previews/cwDark-00ffff.svg)](sheets/cwDark-00ffff.css)| [![Preview of the theme cwBright-00ffff.](previews/cwBright-00ffff.svg)](sheets/cwBright-00ffff.css)| [![Preview of the theme grey1-00ffff.](previews/grey1-00ffff.svg)](sheets/grey1-00ffff.css)| [![Preview of the theme grey2-00ffff.](previews/grey2-00ffff.svg)](sheets/grey2-00ffff.css)| [![Preview of the theme grey3-00ffff.](previews/grey3-00ffff.svg)](sheets/grey3-00ffff.css) |
| 33eeff | [![Preview of the theme cwBlack-33eeff.](previews/cwBlack-33eeff.svg)](sheets/cwBlack-33eeff.css)| [![Preview of the theme cwBlackBlack-33eeff.](previews/cwBlackBlack-33eeff.svg)](sheets/cwBlackBlack-33eeff.css)| [![Preview of the theme cwDark-33eeff.](previews/cwDark-33eeff.svg)](sheets/cwDark-33eeff.css)| [![Preview of the theme cwBright-33eeff.](previews/cwBright-33eeff.svg)](sheets/cwBright-33eeff.css)| [![Preview of the theme grey1-33eeff.](previews/grey1-33eeff.svg)](sheets/grey1-33eeff.css)| [![Preview of the theme grey2-33eeff.](previews/grey2-33eeff.svg)](sheets/grey2-33eeff.css)| [![Preview of the theme grey3-33eeff.](previews/grey3-33eeff.svg)](sheets/grey3-33eeff.css) |
| 33ffee | [![Preview of the theme cwBlack-33ffee.](previews/cwBlack-33ffee.svg)](sheets/cwBlack-33ffee.css)| [![Preview of the theme cwBlackBlack-33ffee.](previews/cwBlackBlack-33ffee.svg)](sheets/cwBlackBlack-33ffee.css)| [![Preview of the theme cwDark-33ffee.](previews/cwDark-33ffee.svg)](sheets/cwDark-33ffee.css)| [![Preview of the theme cwBright-33ffee.](previews/cwBright-33ffee.svg)](sheets/cwBright-33ffee.css)| [![Preview of the theme grey1-33ffee.](previews/grey1-33ffee.svg)](sheets/grey1-33ffee.css)| [![Preview of the theme grey2-33ffee.](previews/grey2-33ffee.svg)](sheets/grey2-33ffee.css)| [![Preview of the theme grey3-33ffee.](previews/grey3-33ffee.svg)](sheets/grey3-33ffee.css) |
| 66eeff | [![Preview of the theme cwBlack-66eeff.](previews/cwBlack-66eeff.svg)](sheets/cwBlack-66eeff.css)| [![Preview of the theme cwBlackBlack-66eeff.](previews/cwBlackBlack-66eeff.svg)](sheets/cwBlackBlack-66eeff.css)| [![Preview of the theme cwDark-66eeff.](previews/cwDark-66eeff.svg)](sheets/cwDark-66eeff.css)| [![Preview of the theme cwBright-66eeff.](previews/cwBright-66eeff.svg)](sheets/cwBright-66eeff.css)| [![Preview of the theme grey1-66eeff.](previews/grey1-66eeff.svg)](sheets/grey1-66eeff.css)| [![Preview of the theme grey2-66eeff.](previews/grey2-66eeff.svg)](sheets/grey2-66eeff.css)| [![Preview of the theme grey3-66eeff.](previews/grey3-66eeff.svg)](sheets/grey3-66eeff.css) |
| 66ffee | [![Preview of the theme cwBlack-66ffee.](previews/cwBlack-66ffee.svg)](sheets/cwBlack-66ffee.css)| [![Preview of the theme cwBlackBlack-66ffee.](previews/cwBlackBlack-66ffee.svg)](sheets/cwBlackBlack-66ffee.css)| [![Preview of the theme cwDark-66ffee.](previews/cwDark-66ffee.svg)](sheets/cwDark-66ffee.css)| [![Preview of the theme cwBright-66ffee.](previews/cwBright-66ffee.svg)](sheets/cwBright-66ffee.css)| [![Preview of the theme grey1-66ffee.](previews/grey1-66ffee.svg)](sheets/grey1-66ffee.css)| [![Preview of the theme grey2-66ffee.](previews/grey2-66ffee.svg)](sheets/grey2-66ffee.css)| [![Preview of the theme grey3-66ffee.](previews/grey3-66ffee.svg)](sheets/grey3-66ffee.css) |
| 99eeff | [![Preview of the theme cwBlack-99eeff.](previews/cwBlack-99eeff.svg)](sheets/cwBlack-99eeff.css)| [![Preview of the theme cwBlackBlack-99eeff.](previews/cwBlackBlack-99eeff.svg)](sheets/cwBlackBlack-99eeff.css)| [![Preview of the theme cwDark-99eeff.](previews/cwDark-99eeff.svg)](sheets/cwDark-99eeff.css)| [![Preview of the theme cwBright-99eeff.](previews/cwBright-99eeff.svg)](sheets/cwBright-99eeff.css)| [![Preview of the theme grey1-99eeff.](previews/grey1-99eeff.svg)](sheets/grey1-99eeff.css)| [![Preview of the theme grey2-99eeff.](previews/grey2-99eeff.svg)](sheets/grey2-99eeff.css)| [![Preview of the theme grey3-99eeff.](previews/grey3-99eeff.svg)](sheets/grey3-99eeff.css) |
| 99ffee | [![Preview of the theme cwBlack-99ffee.](previews/cwBlack-99ffee.svg)](sheets/cwBlack-99ffee.css)| [![Preview of the theme cwBlackBlack-99ffee.](previews/cwBlackBlack-99ffee.svg)](sheets/cwBlackBlack-99ffee.css)| [![Preview of the theme cwDark-99ffee.](previews/cwDark-99ffee.svg)](sheets/cwDark-99ffee.css)| [![Preview of the theme cwBright-99ffee.](previews/cwBright-99ffee.svg)](sheets/cwBright-99ffee.css)| [![Preview of the theme grey1-99ffee.](previews/grey1-99ffee.svg)](sheets/grey1-99ffee.css)| [![Preview of the theme grey2-99ffee.](previews/grey2-99ffee.svg)](sheets/grey2-99ffee.css)| [![Preview of the theme grey3-99ffee.](previews/grey3-99ffee.svg)](sheets/grey3-99ffee.css) |
| 99ffff | [![Preview of the theme cwBlack-99ffff.](previews/cwBlack-99ffff.svg)](sheets/cwBlack-99ffff.css)| [![Preview of the theme cwBlackBlack-99ffff.](previews/cwBlackBlack-99ffff.svg)](sheets/cwBlackBlack-99ffff.css)| [![Preview of the theme cwDark-99ffff.](previews/cwDark-99ffff.svg)](sheets/cwDark-99ffff.css)| [![Preview of the theme cwBright-99ffff.](previews/cwBright-99ffff.svg)](sheets/cwBright-99ffff.css)| [![Preview of the theme grey1-99ffff.](previews/grey1-99ffff.svg)](sheets/grey1-99ffff.css)| [![Preview of the theme grey2-99ffff.](previews/grey2-99ffff.svg)](sheets/grey2-99ffff.css)| [![Preview of the theme grey3-99ffff.](previews/grey3-99ffff.svg)](sheets/grey3-99ffff.css) |
| eeff00 | [![Preview of the theme cwBlack-eeff00.](previews/cwBlack-eeff00.svg)](sheets/cwBlack-eeff00.css)| [![Preview of the theme cwBlackBlack-eeff00.](previews/cwBlackBlack-eeff00.svg)](sheets/cwBlackBlack-eeff00.css)| [![Preview of the theme cwDark-eeff00.](previews/cwDark-eeff00.svg)](sheets/cwDark-eeff00.css)| [![Preview of the theme cwBright-eeff00.](previews/cwBright-eeff00.svg)](sheets/cwBright-eeff00.css)| [![Preview of the theme grey1-eeff00.](previews/grey1-eeff00.svg)](sheets/grey1-eeff00.css)| [![Preview of the theme grey2-eeff00.](previews/grey2-eeff00.svg)](sheets/grey2-eeff00.css)| [![Preview of the theme grey3-eeff00.](previews/grey3-eeff00.svg)](sheets/grey3-eeff00.css) |
| eeff33 | [![Preview of the theme cwBlack-eeff33.](previews/cwBlack-eeff33.svg)](sheets/cwBlack-eeff33.css)| [![Preview of the theme cwBlackBlack-eeff33.](previews/cwBlackBlack-eeff33.svg)](sheets/cwBlackBlack-eeff33.css)| [![Preview of the theme cwDark-eeff33.](previews/cwDark-eeff33.svg)](sheets/cwDark-eeff33.css)| [![Preview of the theme cwBright-eeff33.](previews/cwBright-eeff33.svg)](sheets/cwBright-eeff33.css)| [![Preview of the theme grey1-eeff33.](previews/grey1-eeff33.svg)](sheets/grey1-eeff33.css)| [![Preview of the theme grey2-eeff33.](previews/grey2-eeff33.svg)](sheets/grey2-eeff33.css)| [![Preview of the theme grey3-eeff33.](previews/grey3-eeff33.svg)](sheets/grey3-eeff33.css) |
| eeff66 | [![Preview of the theme cwBlack-eeff66.](previews/cwBlack-eeff66.svg)](sheets/cwBlack-eeff66.css)| [![Preview of the theme cwBlackBlack-eeff66.](previews/cwBlackBlack-eeff66.svg)](sheets/cwBlackBlack-eeff66.css)| [![Preview of the theme cwDark-eeff66.](previews/cwDark-eeff66.svg)](sheets/cwDark-eeff66.css)| [![Preview of the theme cwBright-eeff66.](previews/cwBright-eeff66.svg)](sheets/cwBright-eeff66.css)| [![Preview of the theme grey1-eeff66.](previews/grey1-eeff66.svg)](sheets/grey1-eeff66.css)| [![Preview of the theme grey2-eeff66.](previews/grey2-eeff66.svg)](sheets/grey2-eeff66.css)| [![Preview of the theme grey3-eeff66.](previews/grey3-eeff66.svg)](sheets/grey3-eeff66.css) |
| eeff99 | [![Preview of the theme cwBlack-eeff99.](previews/cwBlack-eeff99.svg)](sheets/cwBlack-eeff99.css)| [![Preview of the theme cwBlackBlack-eeff99.](previews/cwBlackBlack-eeff99.svg)](sheets/cwBlackBlack-eeff99.css)| [![Preview of the theme cwDark-eeff99.](previews/cwDark-eeff99.svg)](sheets/cwDark-eeff99.css)| [![Preview of the theme cwBright-eeff99.](previews/cwBright-eeff99.svg)](sheets/cwBright-eeff99.css)| [![Preview of the theme grey1-eeff99.](previews/grey1-eeff99.svg)](sheets/grey1-eeff99.css)| [![Preview of the theme grey2-eeff99.](previews/grey2-eeff99.svg)](sheets/grey2-eeff99.css)| [![Preview of the theme grey3-eeff99.](previews/grey3-eeff99.svg)](sheets/grey3-eeff99.css) |
| ff0000 | [![Preview of the theme cwBlack-ff0000.](previews/cwBlack-ff0000.svg)](sheets/cwBlack-ff0000.css)| [![Preview of the theme cwBlackBlack-ff0000.](previews/cwBlackBlack-ff0000.svg)](sheets/cwBlackBlack-ff0000.css)| [![Preview of the theme cwDark-ff0000.](previews/cwDark-ff0000.svg)](sheets/cwDark-ff0000.css)| [![Preview of the theme cwBright-ff0000.](previews/cwBright-ff0000.svg)](sheets/cwBright-ff0000.css)| [![Preview of the theme grey1-ff0000.](previews/grey1-ff0000.svg)](sheets/grey1-ff0000.css)| [![Preview of the theme grey2-ff0000.](previews/grey2-ff0000.svg)](sheets/grey2-ff0000.css)| [![Preview of the theme grey3-ff0000.](previews/grey3-ff0000.svg)](sheets/grey3-ff0000.css) |
| ff00ee | [![Preview of the theme cwBlack-ff00ee.](previews/cwBlack-ff00ee.svg)](sheets/cwBlack-ff00ee.css)| [![Preview of the theme cwBlackBlack-ff00ee.](previews/cwBlackBlack-ff00ee.svg)](sheets/cwBlackBlack-ff00ee.css)| [![Preview of the theme cwDark-ff00ee.](previews/cwDark-ff00ee.svg)](sheets/cwDark-ff00ee.css)| [![Preview of the theme cwBright-ff00ee.](previews/cwBright-ff00ee.svg)](sheets/cwBright-ff00ee.css)| [![Preview of the theme grey1-ff00ee.](previews/grey1-ff00ee.svg)](sheets/grey1-ff00ee.css)| [![Preview of the theme grey2-ff00ee.](previews/grey2-ff00ee.svg)](sheets/grey2-ff00ee.css)| [![Preview of the theme grey3-ff00ee.](previews/grey3-ff00ee.svg)](sheets/grey3-ff00ee.css) |
| ff00ff | [![Preview of the theme cwBlack-ff00ff.](previews/cwBlack-ff00ff.svg)](sheets/cwBlack-ff00ff.css)| [![Preview of the theme cwBlackBlack-ff00ff.](previews/cwBlackBlack-ff00ff.svg)](sheets/cwBlackBlack-ff00ff.css)| [![Preview of the theme cwDark-ff00ff.](previews/cwDark-ff00ff.svg)](sheets/cwDark-ff00ff.css)| [![Preview of the theme cwBright-ff00ff.](previews/cwBright-ff00ff.svg)](sheets/cwBright-ff00ff.css)| [![Preview of the theme grey1-ff00ff.](previews/grey1-ff00ff.svg)](sheets/grey1-ff00ff.css)| [![Preview of the theme grey2-ff00ff.](previews/grey2-ff00ff.svg)](sheets/grey2-ff00ff.css)| [![Preview of the theme grey3-ff00ff.](previews/grey3-ff00ff.svg)](sheets/grey3-ff00ff.css) |
| ff33ee | [![Preview of the theme cwBlack-ff33ee.](previews/cwBlack-ff33ee.svg)](sheets/cwBlack-ff33ee.css)| [![Preview of the theme cwBlackBlack-ff33ee.](previews/cwBlackBlack-ff33ee.svg)](sheets/cwBlackBlack-ff33ee.css)| [![Preview of the theme cwDark-ff33ee.](previews/cwDark-ff33ee.svg)](sheets/cwDark-ff33ee.css)| [![Preview of the theme cwBright-ff33ee.](previews/cwBright-ff33ee.svg)](sheets/cwBright-ff33ee.css)| [![Preview of the theme grey1-ff33ee.](previews/grey1-ff33ee.svg)](sheets/grey1-ff33ee.css)| [![Preview of the theme grey2-ff33ee.](previews/grey2-ff33ee.svg)](sheets/grey2-ff33ee.css)| [![Preview of the theme grey3-ff33ee.](previews/grey3-ff33ee.svg)](sheets/grey3-ff33ee.css) |
| ff66ee | [![Preview of the theme cwBlack-ff66ee.](previews/cwBlack-ff66ee.svg)](sheets/cwBlack-ff66ee.css)| [![Preview of the theme cwBlackBlack-ff66ee.](previews/cwBlackBlack-ff66ee.svg)](sheets/cwBlackBlack-ff66ee.css)| [![Preview of the theme cwDark-ff66ee.](previews/cwDark-ff66ee.svg)](sheets/cwDark-ff66ee.css)| [![Preview of the theme cwBright-ff66ee.](previews/cwBright-ff66ee.svg)](sheets/cwBright-ff66ee.css)| [![Preview of the theme grey1-ff66ee.](previews/grey1-ff66ee.svg)](sheets/grey1-ff66ee.css)| [![Preview of the theme grey2-ff66ee.](previews/grey2-ff66ee.svg)](sheets/grey2-ff66ee.css)| [![Preview of the theme grey3-ff66ee.](previews/grey3-ff66ee.svg)](sheets/grey3-ff66ee.css) |
| ff99ee | [![Preview of the theme cwBlack-ff99ee.](previews/cwBlack-ff99ee.svg)](sheets/cwBlack-ff99ee.css)| [![Preview of the theme cwBlackBlack-ff99ee.](previews/cwBlackBlack-ff99ee.svg)](sheets/cwBlackBlack-ff99ee.css)| [![Preview of the theme cwDark-ff99ee.](previews/cwDark-ff99ee.svg)](sheets/cwDark-ff99ee.css)| [![Preview of the theme cwBright-ff99ee.](previews/cwBright-ff99ee.svg)](sheets/cwBright-ff99ee.css)| [![Preview of the theme grey1-ff99ee.](previews/grey1-ff99ee.svg)](sheets/grey1-ff99ee.css)| [![Preview of the theme grey2-ff99ee.](previews/grey2-ff99ee.svg)](sheets/grey2-ff99ee.css)| [![Preview of the theme grey3-ff99ee.](previews/grey3-ff99ee.svg)](sheets/grey3-ff99ee.css) |
| ff99ff | [![Preview of the theme cwBlack-ff99ff.](previews/cwBlack-ff99ff.svg)](sheets/cwBlack-ff99ff.css)| [![Preview of the theme cwBlackBlack-ff99ff.](previews/cwBlackBlack-ff99ff.svg)](sheets/cwBlackBlack-ff99ff.css)| [![Preview of the theme cwDark-ff99ff.](previews/cwDark-ff99ff.svg)](sheets/cwDark-ff99ff.css)| [![Preview of the theme cwBright-ff99ff.](previews/cwBright-ff99ff.svg)](sheets/cwBright-ff99ff.css)| [![Preview of the theme grey1-ff99ff.](previews/grey1-ff99ff.svg)](sheets/grey1-ff99ff.css)| [![Preview of the theme grey2-ff99ff.](previews/grey2-ff99ff.svg)](sheets/grey2-ff99ff.css)| [![Preview of the theme grey3-ff99ff.](previews/grey3-ff99ff.svg)](sheets/grey3-ff99ff.css) |
| ffee00 | [![Preview of the theme cwBlack-ffee00.](previews/cwBlack-ffee00.svg)](sheets/cwBlack-ffee00.css)| [![Preview of the theme cwBlackBlack-ffee00.](previews/cwBlackBlack-ffee00.svg)](sheets/cwBlackBlack-ffee00.css)| [![Preview of the theme cwDark-ffee00.](previews/cwDark-ffee00.svg)](sheets/cwDark-ffee00.css)| [![Preview of the theme cwBright-ffee00.](previews/cwBright-ffee00.svg)](sheets/cwBright-ffee00.css)| [![Preview of the theme grey1-ffee00.](previews/grey1-ffee00.svg)](sheets/grey1-ffee00.css)| [![Preview of the theme grey2-ffee00.](previews/grey2-ffee00.svg)](sheets/grey2-ffee00.css)| [![Preview of the theme grey3-ffee00.](previews/grey3-ffee00.svg)](sheets/grey3-ffee00.css) |
| ffee33 | [![Preview of the theme cwBlack-ffee33.](previews/cwBlack-ffee33.svg)](sheets/cwBlack-ffee33.css)| [![Preview of the theme cwBlackBlack-ffee33.](previews/cwBlackBlack-ffee33.svg)](sheets/cwBlackBlack-ffee33.css)| [![Preview of the theme cwDark-ffee33.](previews/cwDark-ffee33.svg)](sheets/cwDark-ffee33.css)| [![Preview of the theme cwBright-ffee33.](previews/cwBright-ffee33.svg)](sheets/cwBright-ffee33.css)| [![Preview of the theme grey1-ffee33.](previews/grey1-ffee33.svg)](sheets/grey1-ffee33.css)| [![Preview of the theme grey2-ffee33.](previews/grey2-ffee33.svg)](sheets/grey2-ffee33.css)| [![Preview of the theme grey3-ffee33.](previews/grey3-ffee33.svg)](sheets/grey3-ffee33.css) |
| ffee66 | [![Preview of the theme cwBlack-ffee66.](previews/cwBlack-ffee66.svg)](sheets/cwBlack-ffee66.css)| [![Preview of the theme cwBlackBlack-ffee66.](previews/cwBlackBlack-ffee66.svg)](sheets/cwBlackBlack-ffee66.css)| [![Preview of the theme cwDark-ffee66.](previews/cwDark-ffee66.svg)](sheets/cwDark-ffee66.css)| [![Preview of the theme cwBright-ffee66.](previews/cwBright-ffee66.svg)](sheets/cwBright-ffee66.css)| [![Preview of the theme grey1-ffee66.](previews/grey1-ffee66.svg)](sheets/grey1-ffee66.css)| [![Preview of the theme grey2-ffee66.](previews/grey2-ffee66.svg)](sheets/grey2-ffee66.css)| [![Preview of the theme grey3-ffee66.](previews/grey3-ffee66.svg)](sheets/grey3-ffee66.css) |
| ffee99 | [![Preview of the theme cwBlack-ffee99.](previews/cwBlack-ffee99.svg)](sheets/cwBlack-ffee99.css)| [![Preview of the theme cwBlackBlack-ffee99.](previews/cwBlackBlack-ffee99.svg)](sheets/cwBlackBlack-ffee99.css)| [![Preview of the theme cwDark-ffee99.](previews/cwDark-ffee99.svg)](sheets/cwDark-ffee99.css)| [![Preview of the theme cwBright-ffee99.](previews/cwBright-ffee99.svg)](sheets/cwBright-ffee99.css)| [![Preview of the theme grey1-ffee99.](previews/grey1-ffee99.svg)](sheets/grey1-ffee99.css)| [![Preview of the theme grey2-ffee99.](previews/grey2-ffee99.svg)](sheets/grey2-ffee99.css)| [![Preview of the theme grey3-ffee99.](previews/grey3-ffee99.svg)](sheets/grey3-ffee99.css) |
| ffff00 | [![Preview of the theme cwBlack-ffff00.](previews/cwBlack-ffff00.svg)](sheets/cwBlack-ffff00.css)| [![Preview of the theme cwBlackBlack-ffff00.](previews/cwBlackBlack-ffff00.svg)](sheets/cwBlackBlack-ffff00.css)| [![Preview of the theme cwDark-ffff00.](previews/cwDark-ffff00.svg)](sheets/cwDark-ffff00.css)| [![Preview of the theme cwBright-ffff00.](previews/cwBright-ffff00.svg)](sheets/cwBright-ffff00.css)| [![Preview of the theme grey1-ffff00.](previews/grey1-ffff00.svg)](sheets/grey1-ffff00.css)| [![Preview of the theme grey2-ffff00.](previews/grey2-ffff00.svg)](sheets/grey2-ffff00.css)| [![Preview of the theme grey3-ffff00.](previews/grey3-ffff00.svg)](sheets/grey3-ffff00.css) |
| ffff99 | [![Preview of the theme cwBlack-ffff99.](previews/cwBlack-ffff99.svg)](sheets/cwBlack-ffff99.css)| [![Preview of the theme cwBlackBlack-ffff99.](previews/cwBlackBlack-ffff99.svg)](sheets/cwBlackBlack-ffff99.css)| [![Preview of the theme cwDark-ffff99.](previews/cwDark-ffff99.svg)](sheets/cwDark-ffff99.css)| [![Preview of the theme cwBright-ffff99.](previews/cwBright-ffff99.svg)](sheets/cwBright-ffff99.css)| [![Preview of the theme grey1-ffff99.](previews/grey1-ffff99.svg)](sheets/grey1-ffff99.css)| [![Preview of the theme grey2-ffff99.](previews/grey2-ffff99.svg)](sheets/grey2-ffff99.css)| [![Preview of the theme grey3-ffff99.](previews/grey3-ffff99.svg)](sheets/grey3-ffff99.css) |
| ffffff | [![Preview of the theme cwBlack-ffffff.](previews/cwBlack-ffffff.svg)](sheets/cwBlack-ffffff.css)| [![Preview of the theme cwBlackBlack-ffffff.](previews/cwBlackBlack-ffffff.svg)](sheets/cwBlackBlack-ffffff.css)| [![Preview of the theme cwDark-ffffff.](previews/cwDark-ffffff.svg)](sheets/cwDark-ffffff.css)| [![Preview of the theme cwBright-ffffff.](previews/cwBright-ffffff.svg)](sheets/cwBright-ffffff.css)| [![Preview of the theme grey1-ffffff.](previews/grey1-ffffff.svg)](sheets/grey1-ffffff.css)| [![Preview of the theme grey2-ffffff.](previews/grey2-ffffff.svg)](sheets/grey2-ffffff.css)| [![Preview of the theme grey3-ffffff.](previews/grey3-ffffff.svg)](sheets/grey3-ffffff.css) |


