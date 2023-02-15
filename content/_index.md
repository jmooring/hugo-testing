+++
title = 'Hugo GitHub Issue #10723'
date = 2023-02-15T11:34:34-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/10723'
description = "Incorrect code fence width affecting background color"
+++

## With content not wider than wrapper

Here are three examples of fenced code blocks:

- Without line numbers
- With line numbers (inline)
- With line numbers (in a table cell)

Each example should have the same look and feel due to custom styling. The [Hugo documentation](https://gohugo.io/functions/highlight/#options) describes each of the options that you can place in the info string.

### No line numbers

Add `linenos=false` to the info string.

````text
```bash {linenos=false hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
```
````

```bash {linenos=false hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
```

### Line numbers inline

Add `linenos=inline` to the info string.

````text
```bash {linenos=inline hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
```
````

```bash {linenos=inline hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
```

### Line numbers in a table cell

Add `linenos=table` to the info string.

````text
```bash {linenos=table hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
```
````

```bash {linenos=table hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
```

## With content wider than wrapper

Here are three examples of fenced code blocks:

- Without line numbers
- With line numbers (inline)
- With line numbers (in a table cell)

Each example should have the same look and feel due to custom styling. The [Hugo documentation](https://gohugo.io/functions/highlight/#options) describes each of the options that you can place in the info string.

### No line numbers

Add `linenos=false` to the info string.

````text
```bash {linenos=false hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
echo "Most of the farm lands of Washington and Oregon, excepting the valleys of the Willamette and Rogue rivers, lie on the east side of the mountains."
```
````

```bash {linenos=false hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
echo "Most of the farm lands of Washington and Oregon, excepting the valleys of the Willamette and Rogue rivers, lie on the east side of the mountains."
```

### Line numbers inline

Add `linenos=inline` to the info string.

````text
```bash {linenos=inline hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
echo "Most of the farm lands of Washington and Oregon, excepting the valleys of the Willamette and Rogue rivers, lie on the east side of the mountains."
```
````

```bash {linenos=inline hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
echo "Most of the farm lands of Washington and Oregon, excepting the valleys of the Willamette and Rogue rivers, lie on the east side of the mountains."
```

### Line numbers in a table cell

Add `linenos=table` to the info string.

````text
```bash {linenos=table hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
echo "Most of the farm lands of Washington and Oregon, excepting the valleys of the Willamette and Rogue rivers, lie on the east side of the mountains."
```
````

```bash {linenos=table hl_lines=4}
declare a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${a}"
fi
echo "Most of the farm lands of Washington and Oregon, excepting the valleys of the Willamette and Rogue rivers, lie on the east side of the mountains."
```
