+++
title = 'Hugo GitHub Issue #7333'
date = 2022-02-22T23:01:43-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/7333'
description = "PostCSS does not work in directories with spaces"
+++

If PostCSS + Autoprefixer is working properly, you should see this when viewing the source of this page:

```text {nohl=true}
<style>
::-webkit-input-placeholder {
  color: gray;
}
:-ms-input-placeholder {
  color: gray;
}
::placeholder {
  color: gray;
}
</style>
```
