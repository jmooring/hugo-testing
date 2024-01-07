+++
title = 'Hugo GitHub Issue #10894'
linkTitle = 'Home'
date = 2024-01-07T14:57:52-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/10894'
description = "Add LaTeX in Markdown support to Hugo"
+++

## Equations not mangled by Goldmark

These equations do not contain ampersands, matching underscores, sequential backslashes, or delimiters beginning with a backslash, so they are not mangled by Goldmark.

### Inline

```text
// Uses $...$ delimiters
Inline $x = {-b \pm \sqrt{b^2-4ac} \over 2a}$ equation
```

Inline $x = {-b \pm \sqrt{b^2-4ac} \over 2a}$ equation

### Display (block)

```text
// Uses $$...$$ delimiters
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$
```

$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$

```text
// Uses $$...$$ delimiters on their own lines
$$
x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$$
```

$$
x = {-b \pm \sqrt{b^2-4ac} \over 2a}
$$

## Equations mangled by Goldmark

These equations contain ampersands, matching underscores, sequential backslashes, or delimiters beginning with a backslash, so they are mangled by Goldmark.

### Inline

```text
// Uses $...$ delimiters
Inline $a^*=x-b^*$ equation
```

Inline $a^*=x-b^*$ equation

```text
// Uses /(.../) delimiters
Inline /(a^*=x-b^*/( equation
```

Inline /(a^*=x-b^*/( equation

### Display (block)

```text
// Uses $$...$$ delimiters
$$a^*=x-b^*$$
```

$$a^*=x-b^*$$

```text
// Uses \[...\] delimiters
\[a^*=x-b^*\]
```

\[a^*=x-b^*\]

```text
// Uses $$...$$ delimiters on their own lines
$$
a^*=x-b^*
$$
```

$$
a^*=x-b^*
$$

```text
// Uses \[...\] delimiters on their own lines
\[
a^*=x-b^*
\]
```

\[
a^*=x-b^*
\[

```text
// Uses $$...$$ delimiters on their own lines
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

```text
// Uses \[...\] delimiters on their own lines
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

## Using a shortcode

These equations contain ampersands, matching underscores, sequential backslashes, or delimiters beginning with a backslash, so they are mangled by Goldmark. Using a shortcode avoids all problems.

### Inline

```text
// Uses $...$ delimiters
Inline {{</* math */>}}$a^*=x-b^*${{</* /math */>}} equation
```

Inline {{< math >}}$a^*=x-b^*${{< /math >}} equation

```text
// Uses /(.../) delimiters
Inline {{</* math */>}}\(a^*=x-b^*\){{</* /math */>}} equation
```

Inline {{< math >}}\(a^*=x-b^*\){{< /math >}} equation

### Display (block)

```text
// Uses $$...$$ delimiters
{{</* math */>}}$$a^*=x-b^*$${{</* /math */>}}
```

{{< math >}}$$a^*=x-b^*$${{< /math >}}

```text
// Uses \[...\] delimiters
{{</* math */>}}\[a^*=x-b^*\]{{</* /math */>}}
```

{{< math >}}\[a^*=x-b^*\]{{< /math >}}

```text
// Uses $$...$$ delimiters on their own lines
{{</* math */>}}
$$
a^*=x-b^*
$$
{{</* /math */>}}
```

{{< math >}}
$$
a^*=x-b^*
$$
{{< /math >}}

```text
// Uses \[...\] delimiters on their own lines
{{</* math */>}}
\[
a^*=x-b^*
\]
{{</* /math */>}}
```

{{< math >}}
\[
a^*=x-b^*
\]
{{< /math >}}

```text
// Uses $$...$$ delimiters on their own lines
{{</* math */>}}
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
{{</* /math */>}}
```

{{< math >}}
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
{{< /math >}}

```text
// Uses \[...\] delimiters on their own lines
{{</* math */>}}
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
{{</* /math */>}}
```

{{< math >}}
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
{{< /math >}}
