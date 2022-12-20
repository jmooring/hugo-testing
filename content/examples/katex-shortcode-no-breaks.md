+++
title = 'KaTeX Shortcode (no breaks)'
date = 2022-10-18T18:23:55-07:00
draft = false
weight = 10
+++

{{< katex >}}
$$ \begin{array} {lcl} L(p,w_i) &=& \dfrac{1}{N}\Sigma_{i=1}^N(\underbrace{f_r(x_2\rightarrow x_1 \rightarrow x_0)G(x_1\longleftrightarrow x_2)f_r(x_3\rightarrow x_2 \rightarrow x_1)}_{sample\, radiance\, evaluation\, in\, stage2} \\\\\\ &=& \prod_{i=3}^{k-1}(\underbrace{\dfrac{f_r(x_{i+1}\rightarrow x_i\rightarrow x_{i-1})G(x_i\longleftrightarrow x_{i-1})}{p_a(x_{i-1})}}_{stored\,in\,vertex\, during\, light\, path\, tracing\, in\, stage1})\dfrac{G(x_k\longleftrightarrow x_{k-1})L_e(x_k\rightarrow x_{k-1})}{p_a(x_{k-1})p_a(x_k)}) \end{array} $$
{{< /katex >}}

{{< katex >}}
$$ \begin{array} {lcl} L(p,w_i) &=& \dfrac{1}{N}\Sigma_{i=1}^N(\underbrace{f_r(x_2\rightarrow x_1 \rightarrow x_0)G(x_1\longleftrightarrow x_2)f_r(x_3\rightarrow x_2 \rightarrow x_1)}_{sample\, radiance\, evaluation\, in\, stage2} \\\\\\ & & \prod_{i=3}^{k-1}(\underbrace{\dfrac{f_r(x_{i+1}\rightarrow x_i\rightarrow x_{i-1})cos\theta_{i\rightarrow i-1}}{p_w(x_i\rightarrow x_{i-1})}}_{stored\,in\,vertex\, during\, light\, path\, tracing\, in\, stage1})\dfrac{cos\theta_{k\rightarrow k-1}L_e(x_k\rightarrow x_{k-1})}{p_w(x_k \rightarrow x_{k-1})p_a(x_k)}) \end{array} $$
{{< /katex >}}

{{< katex >}}
$$\int_{-\infty}^{\infty} e^{-x^2} dx$$

$${a}^{b} - \overbrace{c}^{d}$$

$$\underbrace{a}_{b} - \underbrace{c}_{d}$$

$$
\begin{aligned}
        equation &= 16 \\
        other &= 26 + 13
\end{aligned}
$$

$$
\begin{pmatrix}
  a & b \\
      c & d
      \end{pmatrix}
$$
{{< /katex >}}

inline {{< katex >}}$\sum_{i = 0}^N 2i = y${{< /katex >}} example
