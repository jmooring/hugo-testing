+++
title = 'Digital Timing Diagram - Waveform (Wavedrom)'
date = 2022-02-02T05:28:52-08:00
draft = false
categories = ['Diagram']
types =  ['Wavedrom']
weight = 80
+++
{{< kroki type="wavedrom" >}}
{ signal: [
  { name: "clk",         wave: "p.....|..." },
  { name: "Data",        wave: "x.345x|=.x", data: ["head", "body", "tail", "data"] },
  { name: "Request",     wave: "0.1..0|1.0" },
  {},
  { name: "Acknowledge", wave: "1.....|01." }
]}
{{< /kroki >}}
