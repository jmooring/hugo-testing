+++
title = 'Entity Relationship Diagram (Erd)'
date = 2022-02-02T04:02:40-08:00
draft = false
categories = ['Diagram']
types =  ['Erd']
weight = 90
+++
{{< kroki type="erd" >}}
[Person]
*name
height
weight
+birth_location_id

[Location]
*id
city
state
country

Person *--1 Location
{{< /kroki >}}
