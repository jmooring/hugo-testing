+++
title = 'Use case diagram (PlantUML)'
date = 2022-02-02T04:43:25-08:00
draft = false
categories = ['Diagram']
types =  ['PlantUML']
weight = 200
+++
```kroki {type=plantuml}
@startuml
left to right direction
skinparam packageStyle rectangle
skinparam monochrome true
actor customer
actor clerk
rectangle checkout {
  customer -- (checkout)
  (checkout) .> (payment) : include
  (help) .> (checkout) : extends
  (checkout) -- clerk
}
@enduml
```
