---
title: DKLang Localization Package
subtitle: Localization library for Delphi applications.
layout: product
icon: dklang-icon-64.png
software: dklang-localization-package
weight: 60
menu: dklang-localization-package
active: true
codeRepoType: github
codeRepoPath: yktoo/dklang
licenses:
    - lgpl21
    - mpl11
fullDocsUrl: https://github.com/yktoo/dklang/wiki
seeAlso:
    - name: DKLang Translation Editor
      url: '/software/dklang-translation-editor/'
---

**DKLang Localization Package** is a set of classes intended to simplify the localization of applications written in Delphi.

## Features

* Easy to use. Put a `TDKLanguageController` on the form, save the project (this will automatically create a language source file) and add a couple of lines to program code: you get a functional multilanguage application! See the examples shipped with the package to learn the details.
* Fully integrated with Delphi VCL component library. Automated tracking of changes in structure or properties of forms, frames, data modules etc., and owned components.
* Complete Unicode support.
* Storing property values for string properties. Storing property values of class `TStrings`, `TCollection` item properties and `TPersistent` descendants. Only the properties recognized by Delphi streaming mechanism as *stored* are processed to avoid storing excessive data.
* A set of string constants can be defined for a project. A constant is referred to by its name (binary name search is implemented). See the <b>Constants</b> example.
* A translation is stored in a plain-text (ANSI or Unicode) file, which can be edited with any text editor. More than that, a much more convenient translation tool is available: [DKLang Translation Editor](/software/dklang-translation-editor).
* Language of all displayed forms is switched at once by changing the current language in the global `TDKLanguageManager` instance.
* Events that fired in the non-visual component *before* and *after* any language change.
* Any property can be excluded from entering the language file, and any property can be forced to enter it even though it is recognized as not stored thanks to the `IgnoreList` and `StoreList` properties of `TDKLanguageController`. Both lists are defined using property name masks (eg., `*.Font.Name`).
* Localization data for the whole project is automatically saved into a so-called language source file (a file with the `.dklang` extension).
* The package's localization mechanism can also be used when no visual forms are instantiated, for localizing constants only, for example, in a console application.
* Application can be built with DKLang's runtime package.
* Thread-safe design allowing for using in a multithreaded environment. Among other things, it allows non-blocking simultaneous data read access by multiple threads.

## Authors

* [Dmitry Kann](https://yktoo.com/) — original concept and initial developer.
* [Bruce J. Miller](http://rules-of-thumb.com/) — current developer (as of version 4).
