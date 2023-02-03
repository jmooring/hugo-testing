+++
title = 'Hugo Forum Topic #14929'
date = 2023-02-02T15:36:18-08:00
draft = false
details = 'https://discourse.gohugo.io/t/14929'
description = "Weird stray </p> (closing paragraph) tags"
+++

No empty lines between each shortcode call:

Something
{{< activities >}}
{{< onboardmenu >}}
{{< enquiry >}}
{{< cancellationterms >}}
{{< packages >}}
{{< call-to-action >}}

---

Empty lines between each shortcode call:

{{< activities >}}

{{< onboardmenu >}}

{{< enquiry >}}

{{< cancellationterms >}}

{{< packages >}}

{{< call-to-action >}}
