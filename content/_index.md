+++
title = 'Hugo Forum Topic #42304'
date = 2023-01-09T14:59:35-08:00
draft = false
details = 'https://discourse.gohugo.io/t/42304'
description = "Height mismatch of highlighted line number in syntax highlighting"
+++

## Line numbers in table

### Without overflow

```bash {linenos=true, lineNumbersInTable=true, hl_lines="4-6"}
declare a
# A short comment.
a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${foo}"
fi
exit 0
```

### With overflow

```bash {linenos=true, lineNumbersInTable=true, hl_lines="4-6"}
declare a
# A really, really, really, really, really, really, really, really, really, really, really, really long comment.
a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${foo}"
fi
exit 0
```

## Line numbers not in table

### Without overflow

```bash {linenos=true, lineNumbersInTable=false, hl_lines="4-6"}
declare a
# A short comment.
a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${foo}"
fi
exit 
```

### With overflow

```bash {linenos=true, lineNumbersInTable=false, hl_lines="4-6"}
declare a
# A really, really, really, really, really, really, really, really, really, really, really, really long comment.
a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${foo}"
fi
exit 
```

## No line numbers

### Without overflow

```bash {linenos=false}
declare a
# A short comment.
a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${foo}"
fi
exit 
```

### With overflow

```bash {linenos=false}
declare a
# A really, really, really, really, really, really, really, really, really, really, really, really long comment.
a=foo
if [[ "${a}" == "foo" ]]; then
  echo "${foo}"
fi
exit 
