+++
title = "Test"
date = 2021-05-14T09:05:22-07:00
draft = false
+++

The `profile_photo_url` returned in the `reviews` collection from the Google Maps Places API has an interesting format. For example:

```text
https://lh3.googleusercontent.com/a-/AOh14GiE1m9iYdXYHle_SaU2V8hMCzlUpslZJVJDgD8eWg=s40-c0x00000000-cc-rp-mo
```

The base image is:

```text
https://lh3.googleusercontent.com/a-/AOh14GiE1m9iYdXYHle_SaU2V8hMCzlUpslZJVJDgD8eWg
```

And then we add an equals sign:

```text
https://lh3.googleusercontent.com/a-/AOh14GiE1m9iYdXYHle_SaU2V8hMCzlUpslZJVJDgD8eWg=
```

And then we can start adding parameters, separated by a hyphen...

```text
https://lh3.googleusercontent.com/a-/AOh14GiE1m9iYdXYHle_SaU2V8hMCzlUpslZJVJDgD8eWg=s128-rw
```

I determined the parameters and their meaning through experimentation and <https://developers.google.com/people/image-sizing>.

Parameter|Description|Example|Notes
:--|:--|:--|:--
bN|border|b20|Sets size of border to N pixels *
baN|badge|ba2|Sets badge
c|crop|c|Crops the image when specifying height and width
cc|crop circle|cc|Crops the image to a circle
cN|color|c0x00336699|Sets the border color to N in hex notation
hN|height|h64|Sets height of image to N pixels
m|?|mm|mm replaces the image with a placeholder
p|smart crop|p|Smart crops the image when specifying height and width
r|render format|rw|g=GIF j=JPEG p=PNG w=WebP
s|scale|s|Disproportionally scales the image when specifying height and width
sN|size|s64|Sets the longer of height or width to N pixels
wN|width|w64|Sets width of image to N pixels

\* The border is within the image extents. Or, to put it another way, if you specify s100-b10, the image will be 80x80 with a 10 px border on all sides.

I determined the badge values through experimentation.

Badge|Description
:--|:--
ba0|4 point star, white on orange
ba1|4 point star, white on orange
ba2|4 point star, white on orange
ba3|5 point star, white on orange
ba4|6 point star, white on orange
ba5|7 point star, white on orange
ba6|8 point star, white on orange
ba7|9 point star, white on orange
ba8|10 point star, white on orange
ba9|check mark inside shield, white on blue
ba10|10 point star, white on magenta
ba11|check mark inside 10 point star, white on blue

Let's craft a URL for a circular image that is 128x128 with a white border that is 5 px wide, rendered as a WebP image:

```text
https://lh3.googleusercontent.com/a-/AOh14GiE1m9iYdXYHle_SaU2V8hMCzlUpslZJVJDgD8eWg=s128-cc-b5-c0x00ffffff-rw
```
