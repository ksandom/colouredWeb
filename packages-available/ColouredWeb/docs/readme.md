# ColouredWeb

ColouredWeb generates a custom CSS that overrides the CSS that websites provide to make the web more useable to people who are sensitive to certain colours.

## Using it

* Make sure `BASE` is included via [repoParms](https://github.com/ksandom/achel/blob/master/docs/programming/creatingARepositoryWithProfiles.md#use-repoparmdefinepackages-to-create-a-profile). TODO be more specific.
* Make sure `ColouredWeb` is included via [repoParms](https://github.com/ksandom/achel/blob/master/docs/programming/creatingARepositoryWithProfiles.md#use-repoparmdefinepackages-to-create-a-profile).

## A worked example

This re-colours all web pages to a colour that suits me very well. It's a dark, low-saturation, greeny-blue.

    $ colouredweb --colourByHex=99eeff --cwOut
    
      hexInput: 
        0: 153
        1: 238
        2: 255
    [debug0]: You will now need to run something like --cwOut to send this to some files.

This turns off the custom formatting.

    $ colouredweb --cwOut
    
      Chrome: 
        line: /home/ksandom/.config/google-chrome/Default/User StyleSheets/Custom.css
        key: Chrome
      Opera: 
        line: /usr/share/opera/user.css
        key: Opera

This re-colours all web pages to a sort of halloween red.

    $ colouredweb --colourByHex=ff3366 --cwOut
    
      hexInput: 
        0: 255
        1: 51
        2: 102
    [debug0]: You will now need to run something like --cwOut to send this to some files.

* The hex codes `99eeff` and `ff3366` are exactly the same format as the full length hex colour codes used by HTML and CSS with the exception of the `#`. Ie in HTML/CSS you would specify `#99eeff`, while in colouredWeb you use `99eeff`.
 * Therefore the hex codes translate to 3 8-bit values, which correspond to Red, Green and Blue respectively. Currently you can actually see the decimal values that it has derived from the input in the output.
* Note running `--cwOut` by itself currently isn't totally correct, in that it actually places syntactically incorrect CSS in place, so some glitches could be present, but I have yet to notice any. I will try to do this better in the near future.

