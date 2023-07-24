+++
title = 'Using the "cite" shortcode'
date = 2023-07-23T20:52:17-07:00
draft = false
+++

{{% blockquote %}}
This is a **Markdown** test.

This is an <b>HTML</b> test.

This is a shortcode-with-a-partial test: {{< cite
  cite="CITE"
  citeStyle="CITESTYLE"
  schemaType="SCHEMATYPE"
  titleLang="en-US"
  titleTr="TITLETR"
  title="TITLE"
>}}.
{{% /blockquote %}}

<mark>This page will not pass HTML validation. Why?</mark>

1. The `cite` element may contain global HTML attributes, and the `cite` attribute is not global. Including a `cite` attribute within a `cite` element is invalid HTML.

2. The HTML validator expects the `itemscope` and `itemprop` attributes to be defined on a parent element.

See <https://validator.w3.org/#validate_by_input>
