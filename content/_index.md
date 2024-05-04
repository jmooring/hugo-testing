+++
title = 'Hugo GitHub Issue #12459'
linkTitle = 'Home'
date = 2024-05-03T18:27:31-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/12459'
description = "markup/goldmark: Support extras extension"
math = true
+++

## Portability

||Inserted text|Mark text|Subscript|Superscript
:--|:--|:--|:--|:--
GitHub|no|no|no|no
GitLab|no|no|no|no
Obsidian|no|yes|no|no
Typora|no|yes|yes|yes
VS Code|no|requires extension|no|requires extension

## Examples

Hydrogen (H) is the 1^st^ element in the periodic table.

Water (H~2~O) is a liquid.

Water (H~2~O) is a ++transparent++ liquid.

Water (H~2~O) is a ++transparent++ ==liquid==.

---

This is an inline $a^*=x-b^*$ equation.

This is a block equation:

\[a^*=x-b^*\]

This is another block equation:

\[
\begin{aligned}
KL(\hat{y} || y) &= \sum_{c=1}^{M}\hat{y}_c \log{\frac{\hat{y}_c}{y_c}} \\
JS(\hat{y} || y) &= \frac{1}{2}(KL(y||\frac{y+\hat{y}}{2}) + KL(\hat{y}||\frac{y+\hat{y}}{2}))
\end{aligned}
\]

---

And now let's mix the extras and passthrough extensions markup:

H~2~O $a^*=x-b^*$ 1^st^ ++foo++ ==bar==.

---

Miscellaneous tests:

The WCAG defines contrast ratio as (L~1~ + 0.05) / (L~2~ + 0.05) where L~1~ is the relative luminance of the lighest color and L~2~ is the relative luminance of the darkest color.

The date is May 3^rd^ 2024.

The date is ++Friday++ May 3^rd^ 2024.

==Mark text== at the beginning of a line.

==An entire paragraph of mark text.==

++Inserted text++ at the beginning of a line.

++An entire paragraph of inserted text.++

---

Now a [setext heading](https://spec.commonmark.org/0.30/#setext-headings) followed by mark text.

Level 2
==

==mark==

---

a^2^ + b^2^ = c^2^

$a^2 + b^2 = c^2$

~~deleted words~~ H~2~0

x~a~ * x~b~ = y~c~
