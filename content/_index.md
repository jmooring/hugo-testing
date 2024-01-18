+++
title = 'Hugo Forum Topic #47869'
linkTitle = 'Home'
date = 2024-01-18T06:39:12-08:00
draft = false
details = 'https://discourse.gohugo.io/t/47869'
description = "Shortcodes within shortcodes renders linebreaks as <p>"
+++

{{< tabs >}}
  {{< img src="/images/dataset-excel.png" alt="dataset-excel.png" >}}
  {{% tab %}}
  This is some **bold** text.

  {{< img src="/images/dataset-excel.png" alt="dataset-excel.png" width=300 height=200 >}}
  {{% /tab %}}
{{< /tabs >}}

{{< tabs >}}
  {{< img src="/images/in-static-dir.jpg" alt="in-static-dir.jpg" >}}
  {{% tab %}}
  This is some **bold** text.

  {{< img src="/images/in-static-dir.jpg" alt="in-static-dir.jpg" width=300 height=200 >}}
  {{% /tab %}}
{{< /tabs >}}
