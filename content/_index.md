+++
title = 'Hugo Forum Topic #38309'
date = 2022-04-22T14:00:10-07:00
draft = false
details = 'https://discourse.gohugo.io/t/38309'
description = "Is there a proper way to replace Chroma with Prism highlighting?"
+++

Prism [plugins](https://prismjs.com/plugins/) used on this page:

- [autoloader](https://prismjs.com/plugins/autoloader/)
- [toolbar](https://prismjs.com/plugins/toolbar/)
- [copy-to-clipboard](https://prismjs.com/plugins/copy-to-clipboard/)
- [show-language](https://prismjs.com/plugins/show-language/)
- [line-highlight](https://prismjs.com/plugins/line-highlight)
- [line-numbers](https://prismjs.com/plugins/line-numbers)

---

## Default

```
declare foo=bar
if [[ "${foo}" == "bar" ]]; then
  echo "${foo}"
fi
exit 0
```

## With language

```bash
declare foo=bar
if [[ "${foo}" == "bar" ]]; then
  echo "${foo}"
fi
exit 0
```

## With language and line-numbers

```bash {class="line-numbers"}
declare foo=bar
if [[ "${foo}" == "bar" ]]; then
  echo "${foo}"
fi
exit 0
```

## With language, line-numbers, and data-start

```bash {class="line-numbers" data-start="4"}
declare foo=bar
if [[ "${foo}" == "bar" ]]; then
  echo "${foo}"
fi
exit 0
```

## With language, line-numbers, data-start, and data-line

```bash {class="line-numbers" data-start="4" data-line="4-5,7"}
declare foo=bar
if [[ "${foo}" == "bar" ]]; then
  echo "${foo}"
fi
exit 0
```
