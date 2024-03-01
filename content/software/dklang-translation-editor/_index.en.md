---
title: DKLang Translation Editor
subtitle: Editing tool for DKLang Localization Package translations.
layout: product
icon: dklang-traned-icon-64.png
software: dklang-translation-editor
weight: 70
menu: dklang-translation-editor
active: true
codeRepoType: github
codeRepoPath: yktoo/dkl_traned
licenses:
    - lgpl3
seeAlso:
    - name: DKLang Localization Package
      url: '../dklang-localization-package/'
---

**DKLang Translation Editor** is a GUI application for editing [DKLang Localization Package](/software/dklang-localization-package) translations.

## Features

* Translation using a dictionary (so-called *Translation Repository*).
* Automatic tracking of source and translation mismatches. A difference log is generated when you open a project. This log shows you added and deleted entries as compared to the language source file. New entries can then be automatically translated with the Translation Repository.
* An extra translation file for displaying strings can be used. For example, when you translate into Ukrainian it would be more convenient to use Russian as a reference rather than English, given a Russian translation is already available.
* Find and Replace functions.
* Any item in the translation tree can be bookmarked and navigated to later.

## Screenshots

{{< carousel >}}
    screenshot-main.png                  The main program window.
    screenshot-open-lang-files-dlg.png   The Open language files dialog.
    screenshot-diff-log-dlg.png          The Differences found dialog.
    screenshot-find-replace-dlg.png      The Find & Replace dialog.
    screenshot-replace-prompt-dlg.png    The Replace prompt dialog.
    screenshot-translation-props-dlg.png The Translation properties dialog.
    screenshot-settings-dlg.png          The Program settings dialog.
{{< /carousel >}}
