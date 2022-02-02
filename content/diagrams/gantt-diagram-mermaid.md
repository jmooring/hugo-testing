+++
title = 'Gantt Diagram (Mermaid)'
date = 2022-02-02T05:39:55-08:00
draft = false
categories = ['Diagram']
types =  ['Mermaid']
weight = 100
+++
{{< kroki type="mermaid" >}}
gantt
  title A Gantt Diagram
  dateFormat  YYYY-MM-DD
  section Section
  A task           :a1, 2014-01-01, 30d
  Another task     :after a1, 20d
  section Another
  Task in sec      :2014-01-12, 12d
  another task     :24d
{{< /kroki >}}
