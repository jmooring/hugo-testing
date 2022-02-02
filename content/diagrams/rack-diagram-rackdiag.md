+++
title = 'Rack Diagram (RackDiag)'
date = 2022-02-02T03:57:50-08:00
draft = false
categories = ['Diagram']
types =  ['RackDiag']
weight = 140
+++
{{< kroki type="rackdiag" >}}
{
  16U;
  1: UPS [2U];
  3: DB Server;
  4: Web Server;
  5: Web Server;
  6: Web Server;
  7: Load Balancer;
  8: L3 Switch;
}
{{< /kroki >}}
