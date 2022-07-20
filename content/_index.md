+++
title = 'Hugo Forum Topic #39570'
date = 2022-07-20T11:11:09-07:00
draft = false
details = 'https://discourse.gohugo.io/t/39570'
description = "A possible bug in the parser?"
+++
{{< concat "params" "test 123" "test 2" "test 3" />}}<br>
{{< concat "mix" >}}param inner test{{< /concat >}}<br>
{{< concat >}}param inner{{< /concat >}}<br>
