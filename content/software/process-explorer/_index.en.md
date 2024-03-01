---
title: Process Explorer
subtitle: Tool for viewing processes and DLL modules in use.
layout: product
icon: process-explorer-icon-64.png
software: process-explorer
weight: 130
menu: process-explorer
active: false
codeRepoType: github
codeRepoPath: yktoo/process-explorer
licenses:
    - gpl3
---

{{< imgfig "screenshot-main.png" "The main program window." >}}

* The main window of the application displays a list of all processes that have been loaded. When you select a process, the right pane shows detailed process information and a list of libraries loaded by it. For each loaded library the application displays the preferred base address (the address the library was built with) and the real base address (the one the library was loaded at).
* It is important to assign a libary a unique base address, because operating system will relocate a library if it is not possible to load it at its preferred address. Which, in turn, slows down application startup and wastes physical memory. popular media player, violates this rule big time.
* Process Explorer helps one to avoid such situations. So, for example, the picture above shows that WinAmp, a very popular media player, violates this rule big time.
* Process Explorer is based on the idea and code from a book by Jeffrey Richter called "Advanced Windows". I ported the code onto Delphi (compiles in Delphi 6 and 7). You can use its code as an example of using ToolHelp API functions.

## Requirements

* Process Explorer uses ToolHelp API functions, which allows it to run under Windows 95/98/ME/2000/XP, but *not NT 4*.
* In order to compile the program from source, you will need a shareware *Toolbar 2000* component library by [Jordan Russel](http://www.jrsoftware.org/).
