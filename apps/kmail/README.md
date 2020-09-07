<!-- This file has been generated from ./bin/build. If you want to edit it, edit "./apps/kmail/README.source.md" and then run ./bin/build again. -->
# kmailMessageDarkMode

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

### Install - In place method

1. Install it.
    ```bash
    sudo make install
    ```

### Install - Filter method

1. Test that it is in working order before installing.
    ```bash
    make test
    ```
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

## Uninstall - In place method

This will restore the original stylesheet to it's original state, without the changes we made.

```bash
sudo make uninstall
```

## Uninstall - Filter method

This will remove the script and the stylesheet, which will cause kmail to revert to the formatting it would have otherwise used. It will not remove the seed from the emails that have already been processed.

```bash
sudo make uninstall-filter
```

## How it works

I've revived [one of my old projects](https://github.com/ksandom/colouredWeb) to generate various CSS stylesheets. These are committed into this repo, so there's no need to have that dependency, but you can.

At that point we just need to make kmail use it using one of the two methods below:

* "In place" - **You want this one, unless you have problems.** The custom stylesheet is appended to an existing stylesheet used for formatting message details in the header of the email output. If it successfully installs, there's very little to go wrong with it, but it could be fragile as kmail evolves and things need to get changed. )
* "Filter" - My first attempt. There's a bit more set-up involved, and sometimes it's frustrating to work out why something isn't working, but there's more power available to user to be able to fix things when things go wrong, without needing to dive into code.
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

## Preview of the themes

|   | cwDark | cwBright | cwBlack | cwBlackBlack |
|:---:|:---:|:---:|:---:|:---:|
| ffffff | [![Preview of the theme cwDark-ffffff.](previews/cwDark-ffffff.svg)](sheets/cwDark-ffffff.css) | [![Preview of the theme cwBright-ffffff.](previews/cwBright-ffffff.svg)](sheets/cwBright-ffffff.css) | [![Preview of the theme cwBlack-ffffff.](previews/cwBlack-ffffff.svg)](sheets/cwBlack-ffffff.css) | [![Preview of the theme cwBlackBlack-ffffff.](previews/cwBlackBlack-ffffff.svg)](sheets/cwBlackBlack-ffffff.css) |
| 99eeff | [![Preview of the theme cwDark-99eeff.](previews/cwDark-99eeff.svg)](sheets/cwDark-99eeff.css) | [![Preview of the theme cwBright-99eeff.](previews/cwBright-99eeff.svg)](sheets/cwBright-99eeff.css) | [![Preview of the theme cwBlack-99eeff.](previews/cwBlack-99eeff.svg)](sheets/cwBlack-99eeff.css) | [![Preview of the theme cwBlackBlack-99eeff.](previews/cwBlackBlack-99eeff.svg)](sheets/cwBlackBlack-99eeff.css) |
| 99ffee | [![Preview of the theme cwDark-99ffee.](previews/cwDark-99ffee.svg)](sheets/cwDark-99ffee.css) | [![Preview of the theme cwBright-99ffee.](previews/cwBright-99ffee.svg)](sheets/cwBright-99ffee.css) | [![Preview of the theme cwBlack-99ffee.](previews/cwBlack-99ffee.svg)](sheets/cwBlack-99ffee.css) | [![Preview of the theme cwBlackBlack-99ffee.](previews/cwBlackBlack-99ffee.svg)](sheets/cwBlackBlack-99ffee.css) |
| eeff99 | [![Preview of the theme cwDark-eeff99.](previews/cwDark-eeff99.svg)](sheets/cwDark-eeff99.css) | [![Preview of the theme cwBright-eeff99.](previews/cwBright-eeff99.svg)](sheets/cwBright-eeff99.css) | [![Preview of the theme cwBlack-eeff99.](previews/cwBlack-eeff99.svg)](sheets/cwBlack-eeff99.css) | [![Preview of the theme cwBlackBlack-eeff99.](previews/cwBlackBlack-eeff99.svg)](sheets/cwBlackBlack-eeff99.css) |
| ffee99 | [![Preview of the theme cwDark-ffee99.](previews/cwDark-ffee99.svg)](sheets/cwDark-ffee99.css) | [![Preview of the theme cwBright-ffee99.](previews/cwBright-ffee99.svg)](sheets/cwBright-ffee99.css) | [![Preview of the theme cwBlack-ffee99.](previews/cwBlack-ffee99.svg)](sheets/cwBlack-ffee99.css) | [![Preview of the theme cwBlackBlack-ffee99.](previews/cwBlackBlack-ffee99.svg)](sheets/cwBlackBlack-ffee99.css) |
| ff99ee | [![Preview of the theme cwDark-ff99ee.](previews/cwDark-ff99ee.svg)](sheets/cwDark-ff99ee.css) | [![Preview of the theme cwBright-ff99ee.](previews/cwBright-ff99ee.svg)](sheets/cwBright-ff99ee.css) | [![Preview of the theme cwBlack-ff99ee.](previews/cwBlack-ff99ee.svg)](sheets/cwBlack-ff99ee.css) | [![Preview of the theme cwBlackBlack-ff99ee.](previews/cwBlackBlack-ff99ee.svg)](sheets/cwBlackBlack-ff99ee.css) |
| ff0000 | [![Preview of the theme cwDark-ff0000.](previews/cwDark-ff0000.svg)](sheets/cwDark-ff0000.css) | [![Preview of the theme cwBright-ff0000.](previews/cwBright-ff0000.svg)](sheets/cwBright-ff0000.css) | [![Preview of the theme cwBlack-ff0000.](previews/cwBlack-ff0000.svg)](sheets/cwBlack-ff0000.css) | [![Preview of the theme cwBlackBlack-ff0000.](previews/cwBlackBlack-ff0000.svg)](sheets/cwBlackBlack-ff0000.css) |
| 00ff00 | [![Preview of the theme cwDark-00ff00.](previews/cwDark-00ff00.svg)](sheets/cwDark-00ff00.css) | [![Preview of the theme cwBright-00ff00.](previews/cwBright-00ff00.svg)](sheets/cwBright-00ff00.css) | [![Preview of the theme cwBlack-00ff00.](previews/cwBlack-00ff00.svg)](sheets/cwBlack-00ff00.css) | [![Preview of the theme cwBlackBlack-00ff00.](previews/cwBlackBlack-00ff00.svg)](sheets/cwBlackBlack-00ff00.css) |
| 0000ff | [![Preview of the theme cwDark-0000ff.](previews/cwDark-0000ff.svg)](sheets/cwDark-0000ff.css) | [![Preview of the theme cwBright-0000ff.](previews/cwBright-0000ff.svg)](sheets/cwBright-0000ff.css) | [![Preview of the theme cwBlack-0000ff.](previews/cwBlack-0000ff.svg)](sheets/cwBlack-0000ff.css) | [![Preview of the theme cwBlackBlack-0000ff.](previews/cwBlackBlack-0000ff.svg)](sheets/cwBlackBlack-0000ff.css) |
| ffff00 | [![Preview of the theme cwDark-ffff00.](previews/cwDark-ffff00.svg)](sheets/cwDark-ffff00.css) | [![Preview of the theme cwBright-ffff00.](previews/cwBright-ffff00.svg)](sheets/cwBright-ffff00.css) | [![Preview of the theme cwBlack-ffff00.](previews/cwBlack-ffff00.svg)](sheets/cwBlack-ffff00.css) | [![Preview of the theme cwBlackBlack-ffff00.](previews/cwBlackBlack-ffff00.svg)](sheets/cwBlackBlack-ffff00.css) |
| ff00ff | [![Preview of the theme cwDark-ff00ff.](previews/cwDark-ff00ff.svg)](sheets/cwDark-ff00ff.css) | [![Preview of the theme cwBright-ff00ff.](previews/cwBright-ff00ff.svg)](sheets/cwBright-ff00ff.css) | [![Preview of the theme cwBlack-ff00ff.](previews/cwBlack-ff00ff.svg)](sheets/cwBlack-ff00ff.css) | [![Preview of the theme cwBlackBlack-ff00ff.](previews/cwBlackBlack-ff00ff.svg)](sheets/cwBlackBlack-ff00ff.css) |
| 00ffff | [![Preview of the theme cwDark-00ffff.](previews/cwDark-00ffff.svg)](sheets/cwDark-00ffff.css) | [![Preview of the theme cwBright-00ffff.](previews/cwBright-00ffff.svg)](sheets/cwBright-00ffff.css) | [![Preview of the theme cwBlack-00ffff.](previews/cwBlack-00ffff.svg)](sheets/cwBlack-00ffff.css) | [![Preview of the theme cwBlackBlack-00ffff.](previews/cwBlackBlack-00ffff.svg)](sheets/cwBlackBlack-00ffff.css) |
| ffff99 | [![Preview of the theme cwDark-ffff99.](previews/cwDark-ffff99.svg)](sheets/cwDark-ffff99.css) | [![Preview of the theme cwBright-ffff99.](previews/cwBright-ffff99.svg)](sheets/cwBright-ffff99.css) | [![Preview of the theme cwBlack-ffff99.](previews/cwBlack-ffff99.svg)](sheets/cwBlack-ffff99.css) | [![Preview of the theme cwBlackBlack-ffff99.](previews/cwBlackBlack-ffff99.svg)](sheets/cwBlackBlack-ffff99.css) |
| ff99ff | [![Preview of the theme cwDark-ff99ff.](previews/cwDark-ff99ff.svg)](sheets/cwDark-ff99ff.css) | [![Preview of the theme cwBright-ff99ff.](previews/cwBright-ff99ff.svg)](sheets/cwBright-ff99ff.css) | [![Preview of the theme cwBlack-ff99ff.](previews/cwBlack-ff99ff.svg)](sheets/cwBlack-ff99ff.css) | [![Preview of the theme cwBlackBlack-ff99ff.](previews/cwBlackBlack-ff99ff.svg)](sheets/cwBlackBlack-ff99ff.css) |
| 99ffff | [![Preview of the theme cwDark-99ffff.](previews/cwDark-99ffff.svg)](sheets/cwDark-99ffff.css) | [![Preview of the theme cwBright-99ffff.](previews/cwBright-99ffff.svg)](sheets/cwBright-99ffff.css) | [![Preview of the theme cwBlack-99ffff.](previews/cwBlack-99ffff.svg)](sheets/cwBlack-99ffff.css) | [![Preview of the theme cwBlackBlack-99ffff.](previews/cwBlackBlack-99ffff.svg)](sheets/cwBlackBlack-99ffff.css) |
