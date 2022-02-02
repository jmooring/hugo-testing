+++
title = 'Sequence Diagram (Mermaid)'
date = 2022-02-02T03:42:13-08:00
draft = false
categories = ['Diagram']
types =  ['Mermaid']
weight = 150
+++
{{< kroki type="mermaid" >}}
sequenceDiagram
  participant Alice
  participant Bob
  Alice->John: Hello John, how are you?
  loop Healthcheck
    John->John: Fight against hypochondria
  end
  Note right of John: Rational thoughts prevail...
  John-->Alice: Great!
  John->Bob: How about you?
  Bob-->John: Jolly good!
{{< /kroki >}}
