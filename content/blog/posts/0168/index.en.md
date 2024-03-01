---
type: post
date: "2012-11-17T00:00:00Z"
title: "Ubuntu/GNOME 3 XML wallpaper creation"
tags:
    - Gnome
    - Linux
    - Ubuntu
    - Unity
    - wallpaper
    - yktools
    - how-to
    - tips & tricks
software: yktools
---

I already [published](0122) a script that sets a random image file as desktop wallpaper. It has only one downside: you have to run it every time you want to rotate your wallpaper.

However GNOME since 2.28 allows assigning a slide show as wallpaper by providing an image list in XML format. There you can specify the order and duration for each image. Moreover, you can even define a transition from one image to another.

So I decided to create a simple script that generates an XML file for a given set of images and, optionally, sets that as the current wallpaper. It requires GNOME 3+ or Ubuntu (11.10 or later).

<!--more-->

## Source code {#source-code}

You can download the latest version at the [script page](/software/yktools) on my website.

## Arguments {#arguments}

The script is quite flexible. Use it as follows:

    generate-wallpaper-xml [options] pictures_dir xml_file

Where:

 * `options`       - Any combination of the following:
   * `-d <number>` - Override default display duration (1795 seconds, ca. half an hour)
   * `-s <mode>`   - Sort the files according to `mode`, whose values are:
     * `name`      - Sort by file path and name
     * `shuffle`   - Randomize file order
   * `-t <number>` - Override default transition duration (5 seconds). If 0, no transition is used
   * `-v`          - Verbose output
   * `-w`          - Set the generated XML file as current wallpaper
 * `pictures_dir`  - Path to directory with pictures
 * `xml_file`      - Path to the output XML file

## Usage examples {#usage-examples}

 * `generate-wallpaper-xml ~/Pictures ~/Pictures/wallpapers.xml`

   Creates the file `wallpapers.xml` in the `Pictures` subdirectory (in the user's home directory) from picture files from the same subdirectory.

 * `generate-wallpaper-xml -w ~/Pictures ~/Pictures/wallpapers.xml`

   The same as above, but additionally sets the generated file as the current wallpaper.

 * `generate-wallpaper-xml -w -d 600 -t 0 ~/Pictures ~/Pictures/wallpapers.xml`

   The same as above, plus sets display duration of each file to 10 minutes (600 seconds), and disables transitions between images.

 * `generate-wallpaper-xml -w -s shuffle -d 600 -t 0 ~/Pictures ~/Pictures/wallpapers.xml`

   The same as above, plus shuffles the file list so that they are ordered randomly.
