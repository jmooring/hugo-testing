---
title: "se-Northern Sami (Davvisámegiella) - translation progress for f7"
date: 2026-01-17T07:12:32+00:00
code: se
name_english: Northern Sami
name_local: Davvisámegiella
progress: 31.80
progress_d: 0.34
release: f7
territories:
 - FI
 - NO
 - SE
polib_error_count: 1
could_not_process_count: 8
---

Language progress for Northern Sami (se) in Fedora f7 is:

* 31.80% when we only look on started packages for this language.
* 0.34% when we compare to every single translatable string in Fedora f7.

Possible scripts are: LatnCyrl

* Total translatable string in Fedora f7: 3457836
* Source words to translate in started packages: 37030
* Translated words: 11775


Download:




* [se generated stats (504 Bytes)]({{% resource url="/f7/se.csv" %}})



Packages:

| Name |  Translated words | Total source words | Progress (%) | Language teams |
|------|------------------:|-------------------:|-------------:|----------------|
 | [snownews]({{< ref "/f7/package/snownews.md" >}}) | 759 | 791 | 96.0 |  | 
 | [amarok]({{< ref "/f7/package/amarok.md" >}}) | 9803 | 13255 | 74.0 | Northern Saami <i18n-sme@lister.ping.uio.no> | 
 | [kaffeine]({{< ref "/f7/package/kaffeine.md" >}}) | 871 | 2354 | 37.0 | Northern Sami <se@li.org> | 
 | [k3b]({{< ref "/f7/package/k3b.md" >}}) | 342 | 20630 | 1.7 | Northern Sami <i18n-sme@lister.ping.uio.no> | 
{.sortable}


# Errors on PO files


## Error with polib
We use the po metadata to get the language code and the team, but sometimes it fails, here are the files.

| Package | Lang from file path/name | polib error | Team |
|---------|--------------------------|-------------|------|
 | [snownews]({{< ref "/f7/package/snownews.md" >}}) | /mnt/stockage/packages/f7/snownews/po/._se.po | error-os |  | 
{.sortable}



## Error with calcstats

We use the calcstats from translate toolkit to get the translation progress, but sometimes it fails, here are the files:

| Package | Lang from file path/name | Team |
|---------|--------------------------|------|
 | [snownews]({{< ref "/f7/package/snownews.md" >}}) | /mnt/stockage/packages/f7/snownews/po/._se.po |  | 
{.sortable}


