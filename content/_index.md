+++
title = 'Hugo GitHub Issue #13205'
linkTitle = 'Home'
date = 2025-01-02T19:35:33-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/13205'
description = "Add QR code generation to image functions for offline permalinks"
+++

## Shortcode examples

### URL

```text
{{</* qr text="https://gohugo.io" /*/>}}
```

{{< qr text="https://gohugo.io" />}}

### Phone number

```text
{{</* qr text="tel:+12065550101" /*/>}}
```

{{< qr text="tel:+12065550101" />}}

### vCard

```text
{{</* qr level="low" scale=2 alt="QR code of vCard for John Smith" */>}}
BEGIN:VCARD
VERSION:2.1
N;CHARSET=UTF-8:Smith;John;R.;Dr.;PhD
FN;CHARSET=UTF-8:Dr. John R. Smith, PhD.
ORG;CHARSET=UTF-8:ABC Widgets
TITLE;CHARSET=UTF-8:Vice President Engineering
TEL;TYPE=WORK:+12065550101
EMAIL;TYPE=WORK:jsmith@example.org
END:VCARD
{{</* /qr */>}}
```

{{< qr level="low" scale=2 alt="QR code of vCard for John Smith" >}}
BEGIN:VCARD
VERSION:2.1
N;CHARSET=UTF-8:Smith;John;R.;Dr.;PhD
FN;CHARSET=UTF-8:Dr. John R. Smith, PhD.
ORG;CHARSET=UTF-8:ABC Widgets
TITLE;CHARSET=UTF-8:Vice President Engineering
TEL;TYPE=WORK:+12065550101
EMAIL;TYPE=WORK:jsmith@example.org
END:VCARD
{{< /qr >}}

### All arguments

```text
{{</* qr
  text="https://gohugo.io"
  level="low"
  scale=2
  targetDir="codes"
  alt="QR code linking to https://gohugo.io"
  class="my-class"
  id="my-id"
  title="My Title"
/*/>}}
```

{{< qr
  text="https://gohugo.io"
  level="high"
  scale=2
  targetDir="codes"
  alt="QR code linking to https://gohugo.io"
  class="my-class"
  id="my-id"
  title="My Title"
/>}}
