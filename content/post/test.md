+++
title = "Test"
date = 2020-07-02T16:22:41-04:00
draft = false
summary = " "
+++
## Markdown Link vs. Relref Shortcode
{{< highlight md "linenos=false" >}}
[Foo](./foo.md)
{{< /highlight >}}

[Foo](./foo.md) &emsp; HTTP response status code = 404. This is expected and desired.

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "./foo.md" */>}})
{{< /highlight >}}

[Foo]({{< relref "./foo.md" >}})

## Other Markdown Link Examples

{{< highlight md "linenos=false" >}}
[Foo](../post/foo)
{{< /highlight >}}

[Foo](../foo)  &emsp; This will work if `uglyurls = false` (default) in config.toml, and will fail if `uglyurls = true`. This will also fail if you have overridden the default [permalink](https://gohugo.io/content-management/urls/#permalinks) pattern in config.toml.

{{< highlight md "linenos=false" >}}
[Foo](../post/foo.html)
{{< /highlight >}}

[Foo](../post/foo.html) &emsp; This will fail if `uglyurls = false` (default) in config.toml, and will work if `uglyurls = true`. This will also fail if you have overridden the default [permalink](https://gohugo.io/content-management/urls/#permalinks) pattern in config.toml.

{{< highlight md "linenos=false" >}}
[Foo](../post/foo.md)
{{< /highlight >}}

[Foo](../post/foo.md) &emsp; This will always fail; expected and desired.

## Relref Shortcode Examples

These will work:

- If `uglyurls = false` in config.toml (default)
- If `uglyurls = true` in config.toml
- If you have overridden the default [permalink](https://gohugo.io/content-management/urls/#permalinks) pattern in config.toml

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "foo" */>}})
{{< /highlight >}}

[Foo]({{< relref "foo" >}})

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "foo.md" */>}})
{{< /highlight >}}

[Foo]({{< relref "foo.md" >}})

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "./foo" */>}})
{{< /highlight >}}

[Foo]({{< relref "./foo" >}})

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "./foo.md" */>}})
{{< /highlight >}}

[Foo]({{< relref "./foo.md" >}})

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "post/foo" */>}})
{{< /highlight >}}

[Foo]({{< relref "post/foo" >}})

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "post/foo.md" */>}})
{{< /highlight >}}

[Foo]({{< relref "post/foo.md" >}})

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "../post/foo" */>}})
{{< /highlight >}}

[Foo]({{< relref "../post/foo" >}})

{{< highlight md "linenos=false" >}}
[Foo]({{</* relref "../post/foo.md" */>}})
{{< /highlight >}}

[Foo]({{< relref "../post/foo.md" >}})
