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


