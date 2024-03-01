---
type: post
date: "2011-08-25T00:00:00Z"
title: "Watermarking pictures for Picasa Web Albums"
tags:
    - Gnome
    - Google Picasa
    - images
    - Linux
    - pictures
    - Ubuntu
    - yktools
    - how-to
    - tips & tricks
image: "https://res.cloudinary.com/yktoo/image/upload/blog/fkv6pf3brey13219.jpg"
software: yktools
---

## Preface {#preface}

Those of you who happen to author pictures and publish them on the Internet, must have thought about being able to claim your authorship for them.

One of the most obvious ways to do that is watermarking pictures by adding your URL, name, copyright and/or copyleft. An average Joe would open his favourite image editor, click the Text tool and write a magnificent message for the generations to come.

{{< imgfig "https://res.cloudinary.com/yktoo/image/upload/blog/fkv6pf3brey13219.jpg" >}}

<!--more-->

However, if there are many of them, the process turns to a chore, whereas we, compilation poets and code sculptors, detest routine tasks.

Another common task for a photographer/blogger is uploading pictures to their cozy image hosting.

To make their life easier and automate all this there's a multitude of tools for all possible OSes. But all of them have a shortcoming: they do it the way their author deemed right, and any deviation from the standard flow would again result in a lot of manual labour.

To address the issues above I created a simple script, which can also be altered to fit any new requirements.

## How to use {#how-to-use}

The script (let's name it `picasa-upload`) is written for `bash`, and is to be called as follows:

    picasa-upload [options] picture_dir [album_name]

Where:

 * `picture_dir` — Path to directory with pictures. The script will recursively scan it and find all image files having .jpg and .png extensions.
 * `album_name` — Picasa Web Albums photo album name. Mandatory unless `-U` is specified.
 * `options` — Any combination of the following:
   * `-D` — do not delete the temporary watermarked image file.
   * `-R` — do not downsize the image (could be useful for eg. panoramas).
   * `-U` — do not upload the image to Picasa (for example, if you only want to watermark the images before handing them over to someone). Implies `-D`.
   * `-s` — use the "small" watermark file (in the event of small images).

Example:

    picasa-upload -DRs "/home/vassily/Pictures/Holiday 2011" "Holiday 2011"

Constants are declared in the beginning of the script: maximum image dimensions, path to the normal and the "small" watermark, and Picasa Web Albums account name.

It's recommended to create watermarks as PNG images with transparent background. The script will blend it with the image using opacity 90% in the bottom right corner. You can easily change it by tweaking `composite` parameters.

## Requirements {#requirements}

 * Linux and bash.
 * ImageMagick must be installed (Ubuntu/Debian: `sudo apt-get install imagemagick`, or check your Linux documentation on how to install it).
 * [googlecl](http://code.google.com/p/googlecl/downloads/list) must be installed.
 * `getopt` must support arguments with spaces. In other words, `getopt -T; echo $?` must print out exactly 4.

## Script file {#script-file}

[View source](https://github.com/yktoo/yktools/blob/master/picasa-upload) | [Download from GitHub](https://raw.githubusercontent.com/yktoo/yktools/master/picasa-upload)
