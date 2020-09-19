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

