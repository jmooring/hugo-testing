+++
title = 'Sequence diagram (SeqDiag)'
date = 2022-02-02T03:39:07-08:00
draft = false
categories = ['Diagram']
types =  ['SeqDiag']
weight = 160
+++
```kroki {type=seqdiag}
{
  browser  -> webserver [label = "GET /index.html"];
  browser <-- webserver;
  browser  -> webserver [label = "POST /blog/comment"];
  webserver  -> database [label = "INSERT comment"];
  webserver <-- database;
  browser <-- webserver;
}
```
