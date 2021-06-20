+++
title = "VectorJS - Input and Elements"
date = 2021-06-19T11:05:56+01:00
draft = false
+++

## Input

### Button

{{< vectorjs2 type="button" args="100, 75, 'My Button'" >}}

### Check Box

{{< vectorjs2 type="checkBox" args="100, 75, 'My Checkbox', false" >}}

### Control Point

{{< vectorjs2 type="control" args="150, 75" >}}

### Dropdown Input

{{< vectorjs2 type="dropdownControl" args="20, 60, ['red', 'green', 'blue'], 0" >}}

### Radio Control

{{< vectorjs2 type="radioControl" args="100, 50, ['red', 'green', 'blue']" >}}

### Scrubber

{{< vectorjs2 type="scrubber" args="100, 75, 400" >}}

### Slider

{{< vectorjs2 type="slider" args="75, 75, {min: 100, max: 200, step: 25, value: 125, width: 200}" >}}

## Elements

### Ellipse

{{< vectorjs2 type="ellipse" args="100, 75, 80, 40" >}}

### Line

{{< vectorjs2 type="line" args="50, 25, 150, 125" >}}

### Path

{{< vectorjs2 type="path" args="'M 50 50 Q 100 150 150 50'">}}

### Rectangle

{{< vectorjs2 type="rectangle" args="50, 50, 100, 50" >}}

### Text

{{< vectorjs2 type="text" args="50, 75, 'My Text1'" >}}

## Examples with Optional Shortcode Parameters

Optional shortcode parameters:

Parameter|Default Value
:--|:--
`border`|`true`
`width`|`600`
`height`|`300`
`fill`|`white`
`stroke`|`black`
`strokeWidth`|`1px`

### Ellipse

{{< vectorjs2
  type="ellipse"
  args="100, 75, 80, 40"
  border=true
  width="200"
  height="150"
  fill="yellow"
  stroke="blue"
  strokeWidth="4px"
>}}

### Rectangle

{{< vectorjs2
  type="rectangle"
  args="50, 50, 100, 50"
  border=false
  width="200"
  height="150"
  fill="orange"
  stroke="green"
  strokeWidth="10px"
>}}
