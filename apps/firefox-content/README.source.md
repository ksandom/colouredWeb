# Application name

Dark mode (themeS) for Firefox.

Note: That for better, or for worse, this functionality is now considered legacy in Firefox. This means that
* There's a couple of extra steps to enable it.
* This functionality could well disappear in the future.

## Install

1. Install the stylesheet.
    ```bash
    sudo make install
    ```
1. Browse to `about:config`
1. Set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`.
1. Restart firefox.

## Uninstall

```bash
sudo make uninstall
```

## Read more

[More info](https://davidwalsh.name/firefox-user-stylesheet).
