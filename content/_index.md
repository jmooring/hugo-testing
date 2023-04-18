+++
title = 'Hugo Forum Topic #43967'
linkTitle = 'Home'
date = 2023-04-18T11:12:34-07:00
draft = false
details = 'https://discourse.gohugo.io/t/43967'
description = "Box in mermaid sequence in markdown does not render"
+++

```mermaid
sequenceDiagram
    box rgb(255, 244, 255) Setup
        participant ps as Server
        participant pc as Controller
    end
    box LightYellow Target
        participant ss as Setup Service
    end
autonumber
    Note over ps,ss: Phase1 :: Procure Credentials
    pc->>ss: Test request
    ss->>pc: Response :: Test Response
```
