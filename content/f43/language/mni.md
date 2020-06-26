---
title: "mni-Manipuri (মৈতৈলোন্) - translation progress for f43"
date: 2026-01-18T14:22:18+00:00
code: mni
name_english: Manipuri
name_local: মৈতৈলোন্
progress: 30.02
progress_d: 0.38
release: f43
territories:
 - BD
 - IN
polib_error_count: 2
could_not_process_count: 167
---

Language progress for Manipuri (mni) in Fedora f43 is:

* 30.02% when we only look on started packages for this language.
* 0.38% when we compare to every single translatable string in Fedora f43.

Possible scripts are: BengMtei

* Total translatable string in Fedora f43: 21145798
* Source words to translate in started packages: 269106
* Translated words: 80790


Download:

* [mni compendium (1.5 MB)]({{% resource url="/f43/mni.po.gz" %}}) (aggregation of all strings found in po files)


* [mni terminology (348.5 kB)]({{% resource url="/f43/mni.terminology.po.gz" %}}) see [poterminology](https://docs.translatehouse.org/projects/translate-toolkit/en/latest/commands/poterminology.html)


* [mni translation memory (544.7 kB)]({{% resource url="/f43/mni.tmx.gz" %}}) see [tmx](https://en.wikipedia.org/wiki/Translation_Memory_eXchange)


* [mni generated stats (405 Bytes)]({{% resource url="/f43/mni.csv" %}})



Packages:

| Name |  Translated words | Total source words | Progress (%) | Language teams |
|------|------------------:|-------------------:|-------------:|----------------|
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | 22056 | 39578 | 55.7 |  | 
 | [inkscape]({{< ref "/f43/package/inkscape.md" >}}) | 16801 | 51528 | 32.6 | gist | 
 | [libreoffice]({{< ref "/f43/package/libreoffice.md" >}}) | 41933 | 178000 | 23.6 | LANGUAGE <LL@li.org> | 
{.sortable}


# Errors on PO files


## Error with polib
We use the po metadata to get the language code and the team, but sometimes it fails, here are the files.

| Package | Lang from file path/name | polib error | Team |
|---------|--------------------------|-------------|------|
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/._mni.po | error-unicode |  | 
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/glossary/._mni.po | error-unicode |  | 
{.sortable}



## Error with calcstats

We use the calcstats from translate toolkit to get the translation progress, but sometimes it fails, here are the files:

| Package | Lang from file path/name | Team |
|---------|--------------------------|------|
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/._mni.po |  | 
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/glossary/._mni.po |  | 
{.sortable}


