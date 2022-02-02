+++
title = 'Network Diagram (NwDiag)'
date = 2022-02-02T03:50:47-08:00
draft = false
categories = ['Diagram']
types =  ['NwDiag']
weight = 120
+++
{{< kroki type="nwdiag" >}}
{
  network dmz {
    address = "210.x.x.x/24"

    web01 [address = "210.x.x.1"];
    web02 [address = "210.x.x.2"];
  }
  network internal {
    address = "172.x.x.x/24";

    web01 [address = "172.x.x.1"];
    web02 [address = "172.x.x.2"];
    db01;
    db02;
  }
}
{{< /kroki >}}
