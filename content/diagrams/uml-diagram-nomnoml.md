+++
title = 'UML diagram (Nomnoml)'
date = 2022-02-02T04:15:28-08:00
draft = false
categories = ['Diagram']
types =  ['Nomnoml']
weight = 190
+++
```kroki {type=nomnoml}
[Pirate|eyeCount: Int|raid();pillage()|
  [beard]--[parrot]
  [beard]-:>[foul mouth]
]

[<abstract>Marauder]<:--[Pirate]
[Pirate]- 0..7[mischief]
[jollyness]->[Pirate]
[jollyness]->[rum]
[jollyness]->[singing]
[Pirate]-> *[rum|tastiness: Int|swig()]
[Pirate]->[singing]
[singing]<->[rum]

[<start>st]->[<state>plunder]
[plunder]->[<choice>more loot]
```
