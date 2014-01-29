# colouredWeb

Making the web more accessible to people sensitive to particular colours and shades. An example of this is [Irlen Syndrome](http://en.wikipedia.org/wiki/Irlen_syndrome#Theory)

## Installing it

    export extraSrc="https://github.com/ksandom/colouredWeb.git"; curl https://raw.github.com/ksandom/achel/master/supplimentary/misc/webInstall | bash

## Using it

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

[More info](https://github.com/ksandom/colouredWeb/tree/master/packages-available/ColouredWeb/docs).

## How it works

### Short

ColouredWeb generates a custom CSS that overrides the CSS that websites provide to make the web more useable to people who are sensitive to certain colours.

### Lond

Most modern browsers have the ability for the user to specify their own CSS file which can selectively override the formatting on websites. This is an excellent tool for making the web more accessible to people with specific requirements. The challenge is that there is no standard that most websites adhere to which makes it quite time consuming to make a CSS file that works everywhere.

That's where this project comes in. The idea is to make everything at least useable and secondly, most things fairly pretty (prefferably in the author's original flavour, but not at the expense of this project's standards.)

Right now, only chrome and opera are supported. Note that chrome is particularly friendly to this since it applies changes from the CSS file almost immediately which makes testing *beauuuuutifully* easy.

## Timeline

 * First attempt to make the sites I use frequently useable. Using my colours. - Done
 * Create github project. - Done
 * Template the CSS file so that other peoples' colours can be used. - Done
 * Generate common colours.
 * Start accepting user contributions to the template.
 * Create code that can be used on the funnyhacks.com website to allow people to generate their own CSS files simply and easily.
 * Create service that hooks into KDE desktop to dynamically update the CSS file as the colour scheme is changed. (This is a personal itch that I want to scratch, but I don't expect it to be useful to many people.)
 * Create browser plugins to make it easier for users to choose the colors that suit them best, on the fly.

## Contributing

I'm not ready to take contributions yet, but will be very keen to take them very soon.

The sort of things that will be useful are:

 * Fixes for glitches on specific web sites. (This area will be by far the most contributions.)
 * Preset colour schemes.

In the future, it would be cool to create a standard/guide for class names and ids, since this would make a project like this **much** easire! If you know of one, please let me know. I'd rather support an existing standard than create one more.

**It's really important to not block ads with this project.** There are other projects available online which help you do this.

## Why not block ads?

Web developers and site owners can get passionately defensive of their website designs. It's going to be hard enough to get them to buy into a project like this that makes their site look different. Disabling ads on their sites would make it pretty much impossible since it would cut off a source of revenue for them.