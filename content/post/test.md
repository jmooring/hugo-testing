+++
title = "Test"
date = 2020-07-04T17:20:29-04:00
draft = false
summary = " "
+++

View source to verify that:

1. The HTML was correctly rendered.
2. The auto heading ID does not have a trailing hyphen.

Example A: Heading ID

{{< highlight txt "linenos=false" >}}
# Heading A {#foo}
{{< /highlight >}}

# Heading A {#foo}

{{< highlight txt "linenos=false" >}}
# Heading B {.bar}
{{< /highlight >}}

# Heading B {.bar}

{{< highlight txt "linenos=false" >}}
# Heading C {.bar .baz}
{{< /highlight >}}

# Heading C {.bar .baz}

{{< highlight txt "linenos=false" >}}
# Heading D {data-wibble="wobble wubble"}
{{< /highlight >}}

# Heading D {data-wibble="wobble wubble"}

{{< highlight txt "linenos=false" >}}
# Heading E {#quez .bar class="baz" style="color: red;" data-wibble="wobble"}
{{< /highlight >}}

# Heading E {#quez .bar class="baz" style="color: red;" data-wibble="wobble"}

{{< highlight txt "linenos=false" >}}
# Heading F #
{{< /highlight >}}

# Heading F #
