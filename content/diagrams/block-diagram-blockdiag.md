+++
title = 'Block Diagram (BlockDiag)'
date = 2022-02-02T03:28:46-08:00
draft = false
categories = ['Diagram']
types =  ['BlockDiag']
weight = 50
+++
{{< kroki type="BlockDiag" >}}
{
  blockdiag -> generates -> "block-diagrams";
  blockdiag -> is -> "very easy!";
  blockdiag [color = "greenyellow"];
  "block-diagrams" [color = "pink"];
  "very easy!" [color = "orange"];
}
{{< /kroki >}}
