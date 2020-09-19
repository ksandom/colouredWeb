<!-- This file has been generated from ./bin/build. If you want to edit it, edit "./README.source.md" and then run ./bin/build again. -->
# colouredWeb

Making the web more accessible to people sensitive to particular colours and shades. An example of this is [Irlen Syndrome](http://en.wikipedia.org/wiki/Irlen_syndrome#Theory)

Historically I used this for generating custom StyleSheets for web browsers, and it worked excellently for years like this.

Now it needs some work to bring it up to the quality I want. But I have recently found it really good for generating custom CSS for other purposes, and my old CSS still works with everything I try it on! (That was a surprise.)

I suggest taking a look in [apps/](https://github.com/ksandom/colouredWeb/tree/master/apps) to see a list of apps where the install is currently automated. More coming soon.

## Alternatives for browsing

### What I recommend, where

* Firefox
  * [Dark background and light text](https://addons.mozilla.org/en-US/firefox/addon/dark-background-light-text/).
  * [Dark reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/).
* Chrome based
  * [Dark reader.](https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)
  * [Dark background and light text](https://chrome.google.com/webstore/detail/dark-background-and-light/cdcoopnlkdlmphjpjggdmhohkiklonkh?hl=en) - _OH! I need to try this!_
* Safari
  * [Dark reader](https://darkreader.org/safari). - _I have not used it on this platform._
* Edge
  * [Dark reader](https://microsoftedge.microsoft.com/addons/detail/ifoakfbpdcdoeenechcleahebpibofpc). - _I have not used it on this platform._

### Overview of the plugins

"Dark background and light text" is really fast, and is my first choice. It works really well.

"Dark reader" looks gorgeous, and has some really nice controls for adjusting the look of pages. Some of the controls even apply to videos in pages. There is a performance impact, though. Especially on firefox.

Some sites work better in one or the other. So I typically have firefox and a chrome based browser open at the same time, each for different tasks.

Here is some [interesting discussion](https://www.reddit.com/r/firefox/comments/9mm9jw/best_dark_extension/) from other people on the topic, including some other plugins that I haven't tried yet.


## Install an app specific solution - USERS

Go in to the appropriate [apps/](https://github.com/ksandom/colouredWeb/tree/master/apps) folder and follow the instructions for that app.

## Installing & using colouredWeb for development - DEVELOPERS

### Install

    export extraSrc="https://github.com/ksandom/colouredWeb.git"; curl https://raw.githubusercontent.com/ksandom/achel/master/supplimentary/misc/webInstall | bash

### Using it

This re-colours all web pages to a colour that suits me very well. It's a dark, low-saturation, greeny-blue.

    $ colouredweb --colourByHex=99eeff --cwOut
    
      hexInput: 
        0: 153
        1: 238
        2: 255
    [debug0]: You will now need to run something like --cwOut to send this to some files.

This turns off the custom formatting.
Note that this isn't totally correct, in that it actually places syntactically incorrect CSS in place, so some glitches could be present, but I have yet to notice them. I will try to do this better in the near future.

    $ colouredweb --cwOut
    
      Chrome: 
        line: /home/ksandom/.config/google-chrome/Default/User StyleSheets/Custom.css
        key: Chrome
      Opera: 
        line: /usr/share/opera/user.css
        key: Opera

Actually, we want to make it a dark theme

    $ colouredweb --cwDark
    $ colouredweb --colourByHex=99eeff --cwOut
    
      hexInput: 
        0: 153
        1: 238
        2: 255
    [debug0]: You will now need to run something like --cwOut to send this to some files.

There is also `--cwBright`.

[More info](https://github.com/ksandom/colouredWeb/tree/master/packages-available/ColouredWeb/docs).

### How it works

#### Short

ColouredWeb generates a custom CSS that overrides the CSS that websites provide to make the web more useable to people who are sensitive to certain colours.

#### Long

Most modern browsers have the ability for the user to specify their own CSS file which can selectively override the formatting on websites. This is an excellent tool for making the web more accessible to people with specific requirements. The challenge is that there is no standard that most websites adhere to which makes it quite time consuming to make a CSS file that works everywhere.

That's where this project comes in. The idea is to make everything at least useable and secondly, most things fairly pretty (prefferably in the author's original flavour, but not at the expense of this project's standards.)

Chrome dropped support for this some time ago. I suggest taking a look at the [Alternatives for browsing](https://github.com/ksandom/colouredWeb#alternatives-for-browsing)

## Contributing

Pull requests welcome.

## Why not block ads?

Web developers and site owners can get passionately defensive of their website designs. It's going to be hard enough to get them to buy into a project like this that makes their site look different. Disabling ads on their sites would make it pretty much impossible since it would cut off a source of revenue for them.

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


