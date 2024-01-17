+++
title = 'Passthrough tests'
date = 2024-01-15T12:33:14-08:00
draft = false
+++

## Equations not mangled by Goldmark

These equations do not contain ampersands, matching underscores, sequential backslashes, or delimiters beginning with a backslash, so they are not mangled by Goldmark.

### Inline with `$...$` delimiters

```text
// Example 1: delimiters on same line

Inline $x = {-b \pm \sqrt{b^2-4ac} \over 2a}$ equation
```

Inline $x = {-b \pm \sqrt{b^2-4ac} \over 2a}$ equation

```text
// Example 2: delimiters on their own lines

Inline $
x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$ equation
```

Inline $
x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$ equation

```text
// Example 3: delimiters split over two lines

Inline $x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$ equation
```

Inline $x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$ equation

```text
// Example 4: delimiters split over two lines

Inline $
x = {-b \pm \sqrt{b^2-4ac} \over 2a}$ equation
```

Inline $
x = {-b \pm \sqrt{b^2-4ac} \over 2a}$ equation

### Block with `$$...$$` delimiters

```text
// Example 5: delimiters on same line

Block $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$ equation
```

Block $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$ equation

```text
// Example 6: delimiters on their own lines

Block $$
x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$$ equation
```

Block $$
x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$$ equation

```text
// Example 7: delimiters split over two lines

Block $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$$ equation
```

Block $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$$ equation

```text
// Example 8: delimiters split over two lines

Block $$
x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$ equation
```

Block $$
x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$ equation

## Equations mangled by Goldmark

These equations contain ampersands, matching underscores, sequential backslashes, or delimiters beginning with a backslash, so they are mangled by Goldmark.

### Inline with `$...$` delimiters

```text
// Example 9: delimiters on same line

Inline $a^*=x-b^*$ equation
```

Inline $a^*=x-b^*$ equation

```text
// Example 10: delimiters on their own lines

Inline $
a^*=x-b^*
$ equation
```

Inline $
a^*=x-b^*
$ equation

```text
// Example 11: delimiters split over two lines

Inline $a^*=x-b^*
$ equation
```

Inline $a^*=x-b^*
$ equation

```text
// Example 12: delimiters split over two lines

Inline $
a^*=x-b^*$ equation
```

Inline $
a^*=x-b^*$ equation

### Block with `$$...$$` delimiters

```text
// Example 13: delimiters on same line

Block $$a^*=x-b^*$$ equation
```

Block $$a^*=x-b^*$$ equation

```text
// Example 14: delimiters on their own lines

Block $$
a^*=x-b^*
$$ equation
```

Block $$
a^*=x-b^*
$$ equation

```text
// Example 15: delimiters split over two lines

Block $$a^*=x-b^*
$$ equation
```

Block $$a^*=x-b^*
$$ equation

```text
// Example 16: delimiters split over two lines

Block $$
a^*=x-b^*$$ equation
```

Block $$
a^*=x-b^*$$ equation

### Inline with `\(...\)` delimiters

```text
// Example 17: delimiters on same line

Inline \(a^*=x-b^*\) equation
```

Inline \(a^*=x-b^*\) equation

```text
// Example 18: delimiters on their own lines

Inline \(
a^*=x-b^*
\) equation
```

Inline \(
a^*=x-b^*
\) equation

```text
// Example 19: delimiters split over two lines

Inline \(a^*=x-b^*
\) equation
```

Inline \(a^*=x-b^*
\) equation

```text
// Example 20: delimiters split over two lines

Inline \(
a^*=x-b^*\) equation
```

Inline \(
a^*=x-b^*\) equation

### Block with `\[...\]` delimiters

```text
// Example 21: delimiters on same line

Block \[a^*=x-b^*\] equation
```

Block \[a^*=x-b^*\] equation

```text
// Example 22: delimiters on their own lines

Block \[
a^*=x-b^*
\] equation
```

Block \[
a^*=x-b^*
\] equation

```text
// Example 23: delimiters split over two lines

Block \[a^*=x-b^*
\] equation
```

Block \[a^*=x-b^*
\] equation

```text
// Example 24: delimiters split over two lines

Block \[
a^*=x-b^*\] equation
```

Block \[
a^*=x-b^*\] equation

## Complex block equation mangled by Goldmark

### Block with `$$...$$` delimiters

```text
// Example 25

$$
\begin{array} {lcl}
  L(p,w_i) &=& \dfrac{1}{N}\Sigma_{i=1}^N(\underbrace{f_r(x_2
  \rightarrow x_1
  \rightarrow x_0)G(x_1
  \longleftrightarrow x_2)f_r(x_3
  \rightarrow x_2
  \rightarrow x_1)}_{sample\, radiance\, evaluation\, in\, stage2}
  \\\\\\ &=&
  \prod_{i=3}^{k-1}(\underbrace{\dfrac{f_r(x_{i+1}
  \rightarrow x_i
  \rightarrow x_{i-1})G(x_i
  \longleftrightarrow x_{i-1})}{p_a(x_{i-1})}}_{stored\,in\,vertex\, during\,light\, path\, tracing\, in\, stage1})\dfrac{G(x_k
  \longleftrightarrow x_{k-1})L_e(x_k
  \rightarrow x_{k-1})}{p_a(x_{k-1})p_a(x_k)})
\end{array}
$$
```

$$
\begin{array} {lcl}
  L(p,w_i) &=& \dfrac{1}{N}\Sigma_{i=1}^N(\underbrace{f_r(x_2
  \rightarrow x_1
  \rightarrow x_0)G(x_1
  \longleftrightarrow x_2)f_r(x_3
  \rightarrow x_2
  \rightarrow x_1)}_{sample\, radiance\, evaluation\, in\, stage2}
  \\\\\\ &=&
  \prod_{i=3}^{k-1}(\underbrace{\dfrac{f_r(x_{i+1}
  \rightarrow x_i
  \rightarrow x_{i-1})G(x_i
  \longleftrightarrow x_{i-1})}{p_a(x_{i-1})}}_{stored\,in\,vertex\, during\,light\, path\, tracing\, in\, stage1})\dfrac{G(x_k
  \longleftrightarrow x_{k-1})L_e(x_k
  \rightarrow x_{k-1})}{p_a(x_{k-1})p_a(x_k)})
\end{array}
$$

### Block with `\[...\]` delimiters

```text
// Example 26

\[
\begin{array} {lcl}
  L(p,w_i) &=& \dfrac{1}{N}\Sigma_{i=1}^N(\underbrace{f_r(x_2
  \rightarrow x_1
  \rightarrow x_0)G(x_1
  \longleftrightarrow x_2)f_r(x_3
  \rightarrow x_2
  \rightarrow x_1)}_{sample\, radiance\, evaluation\, in\, stage2}
  \\\\\\ &=&
  \prod_{i=3}^{k-1}(\underbrace{\dfrac{f_r(x_{i+1}
  \rightarrow x_i
  \rightarrow x_{i-1})G(x_i
  \longleftrightarrow x_{i-1})}{p_a(x_{i-1})}}_{stored\,in\,vertex\, during\,light\, path\, tracing\, in\, stage1})\dfrac{G(x_k
  \longleftrightarrow x_{k-1})L_e(x_k
  \rightarrow x_{k-1})}{p_a(x_{k-1})p_a(x_k)})
\end{array}
\]
```

\[
\begin{array} {lcl}
  L(p,w_i) &=& \dfrac{1}{N}\Sigma_{i=1}^N(\underbrace{f_r(x_2
  \rightarrow x_1
  \rightarrow x_0)G(x_1
  \longleftrightarrow x_2)f_r(x_3
  \rightarrow x_2
  \rightarrow x_1)}_{sample\, radiance\, evaluation\, in\, stage2}
  \\\\\\ &=&
  \prod_{i=3}^{k-1}(\underbrace{\dfrac{f_r(x_{i+1}
  \rightarrow x_i
  \rightarrow x_{i-1})G(x_i
  \longleftrightarrow x_{i-1})}{p_a(x_{i-1})}}_{stored\,in\,vertex\, during\,light\, path\, tracing\, in\, stage1})\dfrac{G(x_k
  \longleftrightarrow x_{k-1})L_e(x_k
  \rightarrow x_{k-1})}{p_a(x_{k-1})p_a(x_k)})
\end{array}
\]
