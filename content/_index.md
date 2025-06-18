+++
title = 'Home'
date = 2025-06-17T21:20:54-07:00
draft = false
details = 'https://discourse.gohugo.io/t/55082'
description = "Is there way to add a caption tag to a table?"
+++

```text
name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Rover|dog|Boxer|5
Felix|cat|Malicious|7
{caption="This is the caption."}
```

name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Rover|dog|Boxer|5
Felix|cat|Malicious|7
{caption="This is the caption."}

```text
name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Rover|dog|Boxer|5
Felix|cat|Malicious|7
{caption="This is the caption." class="caption-bottom"}
```

name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Rover|dog|Boxer|5
Felix|cat|Malicious|7
{caption="This is the caption." class="caption-bottom"}

```text
name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Rover|dog|Boxer|5
Felix|cat|Malicious|7
{caption="This is the caption." class="caption-top"}
```

name|type|breed|age
:--|:--|:--|:--
Spot|dog|Collie|3
Rover|dog|Boxer|5
Felix|cat|Malicious|7
{caption="This is the caption." class="caption-top"}
