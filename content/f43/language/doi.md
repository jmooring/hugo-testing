---
title: "doi-Dogri (डोगरी) - translation progress for f43"
date: 2026-01-18T14:22:18+00:00
code: doi
name_english: Dogri
name_local: डोगरी
progress: 27.65
progress_d: 0.35
release: f43
territories:
 - IN
polib_error_count: 2
could_not_process_count: 167
---

Language progress for Dogri (doi) in Fedora f43 is:

* 27.65% when we only look on started packages for this language.
* 0.35% when we compare to every single translatable string in Fedora f43.

Possible scripts are: DevaTakrArab

* Total translatable string in Fedora f43: 21145798
* Source words to translate in started packages: 269106
* Translated words: 74415


Download:

* [doi compendium (1.6 MB)]({{% resource url="/f43/doi.po.gz" %}}) (aggregation of all strings found in po files)


* [doi terminology (342.2 kB)]({{% resource url="/f43/doi.terminology.po.gz" %}}) see [poterminology](https://docs.translatehouse.org/projects/translate-toolkit/en/latest/commands/poterminology.html)


* [doi translation memory (542.2 kB)]({{% resource url="/f43/doi.tmx.gz" %}}) see [tmx](https://en.wikipedia.org/wiki/Translation_Memory_eXchange)


* [doi generated stats (425 Bytes)]({{% resource url="/f43/doi.csv" %}})



Packages:

| Name |  Translated words | Total source words | Progress (%) | Language teams |
|------|------------------:|-------------------:|-------------:|----------------|
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | 14078 | 39578 | 35.6 |  | 
 | [inkscape]({{< ref "/f43/package/inkscape.md" >}}) | 15399 | 51528 | 29.9 | LANGUAGE <LL@li.org> | 
 | [libreoffice]({{< ref "/f43/package/libreoffice.md" >}}) | 44938 | 178000 | 25.2 | LANGUAGE <LL@li.org> | 
{.sortable}


# Errors on PO files


## Error with polib
We use the po metadata to get the language code and the team, but sometimes it fails, here are the files.

| Package | Lang from file path/name | polib error | Team |
|---------|--------------------------|-------------|------|
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/._doi.po | error-unicode |  | 
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/glossary/._doi.po | error-unicode |  | 
{.sortable}



## Error with calcstats

We use the calcstats from translate toolkit to get the translation progress, but sometimes it fails, here are the files:

| Package | Lang from file path/name | Team |
|---------|--------------------------|------|
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/._doi.po |  | 
 | [gnucash]({{< ref "/f43/package/gnucash.md" >}}) | /mnt/stockage/packages/f43/gnucash/gnucash-5.14/po/glossary/._doi.po |  | 
{.sortable}


