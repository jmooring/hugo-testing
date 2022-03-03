+++
title = 'Hugo GitHub Issue #9596'
date = 2022-03-02T16:20:40-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/9596'
description = "Change default value markup.highlight.lineNumbersInTable to false"
+++

_Note that with examples 3 and 5 the block of code is selectable with v0.93.0 and later._

_This test site uses bootstrap 5.1.3._

---

Example 1: `{linenos=false linenumbersintable=false}`

```bash {linenos=false linenumbersintable=false}
declare a=1
if [[ "$a" eq 1 ]]; then
  echo "$a"
fi
exit
```

Example 2: `{linenos=false linenumbersintable=true}`

```bash {linenos=false linenumbersintable=true}
declare a=1
if [[ "$a" eq 1 ]]; then
  echo "$a"
fi
exit
```

Example 3: `{linenos=true linenumbersintable=false}`

```bash {linenos=true linenumbersintable=false}
declare a=1
if [[ "$a" eq 1 ]]; then
  echo "$a"
fi
exit
```

Example 4: `{linenos=true linenumbersintable=true}`

```bash {linenos=true linenumbersintable=true}
declare a=1
if [[ "$a" eq 1 ]]; then
  echo "$a"
fi
exit
```

Example 5: `{linenos=inline}`

```bash {linenos=inline}
declare a=1
if [[ "$a" eq 1 ]]; then
  echo "$a"
fi
exit
```

Example 6: `{linenos=table}`

```bash {linenos=table}
declare a=1
if [[ "$a" eq 1 ]]; then
  echo "$a"
fi
exit
```
