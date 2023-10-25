+++
title = 'Hugo Forum Topic #46777'
linkTitle = 'Home'
date = 2023-10-24T15:21:52-07:00
draft = false
details = 'https://discourse.gohugo.io/t/46777'
description = "Changing taxonomy term page title"
+++

{{< archive/widget >}}

{{< archive/outline >}}

In a development environment, when you are creating content and viewing the changes in real time, Hugo publishes content to the normal paths:

```text
hugo server
```

When you are ready to build your site for deployment, Hugo publishes content to the archive paths, creating a redirect from the original path to the archive path:

```text
rm -rf prebuild/public/ public/ && hugo -s prebuild && hugo
```

To see what you production site will look like when live:

```text
rm -rf prebuild/public/ public/ && hugo -s prebuild && hugo server -e production
```

With the above, changes that you make to content will not be shown unless you stop and restart the server using the same command.
