# How themes work in ColouredWeb

You'll see there are [a lot of themes available](https://github.com/ksandom/colouredWeb/#preview-of-the-themes). The table has 

* Theme colours along the left hand side. Eg 33eeff, ffffff, 33ff99, ff9933 etc.
* Theme shades along the top. Eg black1, bright, grey1 etc.

## Colours

### How colours work

At the moment, all themes are monochromatic. Ie All the colours of a theme are just different brightnesses of the same colour. So choosing the colour will make a change like this

![An orangy based black theme](https://raw.githubusercontent.com/ksandom/colouredWeb/master/previews/black3-ff9933.svg)

vs

![A greenish based black theme](https://raw.githubusercontent.com/ksandom/colouredWeb/master/previews/black3-66ff99.svg)

vs

![A white based black theme.](https://raw.githubusercontent.com/ksandom/colouredWeb/master/previews/black3-ffffff.svg)

Colours are defined [here](https://github.com/ksandom/colouredWeb/blob/master/packages-available/ColouredWeb/defineColours.achel#L6). And look like this

```
    setNested ~!Me,stuff!~,,ffffff
```

### To add your own colour

Simply

* Copy an existing line.
    * Make sure that it's indented with a tab, not spaces. The interpreter does not yet support space based indentation.
* Modify it to have the colour that you desire.
    * Colours are defined using the same 3 2-byte hex values (Red, Green, and Blue) that HTML uses, but without the `#` a the beginning. I specifically went to the extra effort to do it this way so that the every-day [HTML colour pickers](https://www.w3schools.com/colors/colors_picker.asp) can be used.
* Create a [pull request](https://github.com/ksandom/colouredWeb/pulls) with the change.

## Shades

### How shades work

Shades give us the brightnesses used for each area. They can subtly change like this

![The black2 shade in white.](https://raw.githubusercontent.com/ksandom/colouredWeb/master/previews/black2-ffffff.svg)

vs

![The grey2 shade in white.](https://raw.githubusercontent.com/ksandom/colouredWeb/master/previews/grey2-ffffff.svg)

Or more extreme like this

![The bright shade in white.](https://raw.githubusercontent.com/ksandom/colouredWeb/master/previews/bright-ffffff.svg)

Shades are defined [here](https://github.com/ksandom/colouredWeb/blob/master/packages-available/ColouredWeb/defineThemeShades.achel#L6). And look like this

```
massSet ["ColouredWeb,themeShades,black1"],
    setNested ~!Me,stuff!~,windowText,1
    setNested ~!Me,stuff!~,windowBackground,0
    setNested ~!Me,stuff!~,nonWriteBackground,0.1
    setNested ~!Me,stuff!~,mediumText,1
    setNested ~!Me,stuff!~,mediumBackground,0
    setNested ~!Me,stuff!~,panelText,1
    setNested ~!Me,stuff!~,panelBackground,0
    setNested ~!Me,stuff!~,highlightText,0
    setNested ~!Me,stuff!~,highlightBackground,0.3
```

These are decimal values between 0 and 1, where 1 is the brightest, and 0 is the darkest. At the moment, only one decimal place is supported.

### To add your own shade

Simply

* Copy an existing section.
    * Make sure that each indented line is indented with a tab, not spaces. The interpreter does not yet support space based indentation.
* Give it a unique name. Eg black4 (The example above is titled black1 in the first line).
* Modify the values as desired.
* Create a [pull request](https://github.com/ksandom/colouredWeb/pulls) with the change.

