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

|  | cwBlack | cwBlackBlack | cwDark | cwBright |
| --- |:---:|:---:|:---:|:---: |
| 0000ff | [![Preview of the theme cwBlack-0000ff.](previews/cwBlack-0000ff.svg)](sheets/cwBlack-0000ff.css)| [![Preview of the theme cwBlackBlack-0000ff.](previews/cwBlackBlack-0000ff.svg)](sheets/cwBlackBlack-0000ff.css)| [![Preview of the theme cwDark-0000ff.](previews/cwDark-0000ff.svg)](sheets/cwDark-0000ff.css)| [![Preview of the theme cwBright-0000ff.](previews/cwBright-0000ff.svg)](sheets/cwBright-0000ff.css) |
| 00ff00 | [![Preview of the theme cwBlack-00ff00.](previews/cwBlack-00ff00.svg)](sheets/cwBlack-00ff00.css)| [![Preview of the theme cwBlackBlack-00ff00.](previews/cwBlackBlack-00ff00.svg)](sheets/cwBlackBlack-00ff00.css)| [![Preview of the theme cwDark-00ff00.](previews/cwDark-00ff00.svg)](sheets/cwDark-00ff00.css)| [![Preview of the theme cwBright-00ff00.](previews/cwBright-00ff00.svg)](sheets/cwBright-00ff00.css) |
| 00ffff | [![Preview of the theme cwBlack-00ffff.](previews/cwBlack-00ffff.svg)](sheets/cwBlack-00ffff.css)| [![Preview of the theme cwBlackBlack-00ffff.](previews/cwBlackBlack-00ffff.svg)](sheets/cwBlackBlack-00ffff.css)| [![Preview of the theme cwDark-00ffff.](previews/cwDark-00ffff.svg)](sheets/cwDark-00ffff.css)| [![Preview of the theme cwBright-00ffff.](previews/cwBright-00ffff.svg)](sheets/cwBright-00ffff.css) |
| 99eeff | [![Preview of the theme cwBlack-99eeff.](previews/cwBlack-99eeff.svg)](sheets/cwBlack-99eeff.css)| [![Preview of the theme cwBlackBlack-99eeff.](previews/cwBlackBlack-99eeff.svg)](sheets/cwBlackBlack-99eeff.css)| [![Preview of the theme cwDark-99eeff.](previews/cwDark-99eeff.svg)](sheets/cwDark-99eeff.css)| [![Preview of the theme cwBright-99eeff.](previews/cwBright-99eeff.svg)](sheets/cwBright-99eeff.css) |
| 99ffee | [![Preview of the theme cwBlack-99ffee.](previews/cwBlack-99ffee.svg)](sheets/cwBlack-99ffee.css)| [![Preview of the theme cwBlackBlack-99ffee.](previews/cwBlackBlack-99ffee.svg)](sheets/cwBlackBlack-99ffee.css)| [![Preview of the theme cwDark-99ffee.](previews/cwDark-99ffee.svg)](sheets/cwDark-99ffee.css)| [![Preview of the theme cwBright-99ffee.](previews/cwBright-99ffee.svg)](sheets/cwBright-99ffee.css) |
| 99ffff | [![Preview of the theme cwBlack-99ffff.](previews/cwBlack-99ffff.svg)](sheets/cwBlack-99ffff.css)| [![Preview of the theme cwBlackBlack-99ffff.](previews/cwBlackBlack-99ffff.svg)](sheets/cwBlackBlack-99ffff.css)| [![Preview of the theme cwDark-99ffff.](previews/cwDark-99ffff.svg)](sheets/cwDark-99ffff.css)| [![Preview of the theme cwBright-99ffff.](previews/cwBright-99ffff.svg)](sheets/cwBright-99ffff.css) |
| eeff99 | [![Preview of the theme cwBlack-eeff99.](previews/cwBlack-eeff99.svg)](sheets/cwBlack-eeff99.css)| [![Preview of the theme cwBlackBlack-eeff99.](previews/cwBlackBlack-eeff99.svg)](sheets/cwBlackBlack-eeff99.css)| [![Preview of the theme cwDark-eeff99.](previews/cwDark-eeff99.svg)](sheets/cwDark-eeff99.css)| [![Preview of the theme cwBright-eeff99.](previews/cwBright-eeff99.svg)](sheets/cwBright-eeff99.css) |
| ff0000 | [![Preview of the theme cwBlack-ff0000.](previews/cwBlack-ff0000.svg)](sheets/cwBlack-ff0000.css)| [![Preview of the theme cwBlackBlack-ff0000.](previews/cwBlackBlack-ff0000.svg)](sheets/cwBlackBlack-ff0000.css)| [![Preview of the theme cwDark-ff0000.](previews/cwDark-ff0000.svg)](sheets/cwDark-ff0000.css)| [![Preview of the theme cwBright-ff0000.](previews/cwBright-ff0000.svg)](sheets/cwBright-ff0000.css) |
| ff00ff | [![Preview of the theme cwBlack-ff00ff.](previews/cwBlack-ff00ff.svg)](sheets/cwBlack-ff00ff.css)| [![Preview of the theme cwBlackBlack-ff00ff.](previews/cwBlackBlack-ff00ff.svg)](sheets/cwBlackBlack-ff00ff.css)| [![Preview of the theme cwDark-ff00ff.](previews/cwDark-ff00ff.svg)](sheets/cwDark-ff00ff.css)| [![Preview of the theme cwBright-ff00ff.](previews/cwBright-ff00ff.svg)](sheets/cwBright-ff00ff.css) |
| ff99ee | [![Preview of the theme cwBlack-ff99ee.](previews/cwBlack-ff99ee.svg)](sheets/cwBlack-ff99ee.css)| [![Preview of the theme cwBlackBlack-ff99ee.](previews/cwBlackBlack-ff99ee.svg)](sheets/cwBlackBlack-ff99ee.css)| [![Preview of the theme cwDark-ff99ee.](previews/cwDark-ff99ee.svg)](sheets/cwDark-ff99ee.css)| [![Preview of the theme cwBright-ff99ee.](previews/cwBright-ff99ee.svg)](sheets/cwBright-ff99ee.css) |
| ff99ff | [![Preview of the theme cwBlack-ff99ff.](previews/cwBlack-ff99ff.svg)](sheets/cwBlack-ff99ff.css)| [![Preview of the theme cwBlackBlack-ff99ff.](previews/cwBlackBlack-ff99ff.svg)](sheets/cwBlackBlack-ff99ff.css)| [![Preview of the theme cwDark-ff99ff.](previews/cwDark-ff99ff.svg)](sheets/cwDark-ff99ff.css)| [![Preview of the theme cwBright-ff99ff.](previews/cwBright-ff99ff.svg)](sheets/cwBright-ff99ff.css) |
| ffee99 | [![Preview of the theme cwBlack-ffee99.](previews/cwBlack-ffee99.svg)](sheets/cwBlack-ffee99.css)| [![Preview of the theme cwBlackBlack-ffee99.](previews/cwBlackBlack-ffee99.svg)](sheets/cwBlackBlack-ffee99.css)| [![Preview of the theme cwDark-ffee99.](previews/cwDark-ffee99.svg)](sheets/cwDark-ffee99.css)| [![Preview of the theme cwBright-ffee99.](previews/cwBright-ffee99.svg)](sheets/cwBright-ffee99.css) |
| ffff00 | [![Preview of the theme cwBlack-ffff00.](previews/cwBlack-ffff00.svg)](sheets/cwBlack-ffff00.css)| [![Preview of the theme cwBlackBlack-ffff00.](previews/cwBlackBlack-ffff00.svg)](sheets/cwBlackBlack-ffff00.css)| [![Preview of the theme cwDark-ffff00.](previews/cwDark-ffff00.svg)](sheets/cwDark-ffff00.css)| [![Preview of the theme cwBright-ffff00.](previews/cwBright-ffff00.svg)](sheets/cwBright-ffff00.css) |
| ffff99 | [![Preview of the theme cwBlack-ffff99.](previews/cwBlack-ffff99.svg)](sheets/cwBlack-ffff99.css)| [![Preview of the theme cwBlackBlack-ffff99.](previews/cwBlackBlack-ffff99.svg)](sheets/cwBlackBlack-ffff99.css)| [![Preview of the theme cwDark-ffff99.](previews/cwDark-ffff99.svg)](sheets/cwDark-ffff99.css)| [![Preview of the theme cwBright-ffff99.](previews/cwBright-ffff99.svg)](sheets/cwBright-ffff99.css) |
| ffffff | [![Preview of the theme cwBlack-ffffff.](previews/cwBlack-ffffff.svg)](sheets/cwBlack-ffffff.css)| [![Preview of the theme cwBlackBlack-ffffff.](previews/cwBlackBlack-ffffff.svg)](sheets/cwBlackBlack-ffffff.css)| [![Preview of the theme cwDark-ffffff.](previews/cwDark-ffffff.svg)](sheets/cwDark-ffffff.css)| [![Preview of the theme cwBright-ffffff.](previews/cwBright-ffffff.svg)](sheets/cwBright-ffffff.css) |


