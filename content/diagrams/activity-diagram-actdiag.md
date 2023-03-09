+++
title = 'Activity diagram (ActDiag)'
date = 2022-02-02T03:48:36-08:00
draft = false
categories = ['Diagram']
types =  ['ActDiag']
weight = 40
+++
```kroki {type=actdiag}
{
  write -> convert -> image

  lane user {
    label = "User"
    write [label = "Writing reST"];
    image [label = "Get diagram IMAGE"];
  }
  lane actdiag {
    convert [label = "Convert reST to Image"];
  }
}
```
