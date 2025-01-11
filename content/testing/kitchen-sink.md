---
title: Kitchen sink
weight: 20
---

Lots of different examples on the same page for testing:

<https://github.com/terrastruct/d2/issues/2273>

```d2svg
objects: {
  shape: sql_table
  id: int {constraint: primary_key}
  disk: int {constraint: foreign_key}

  json: jsonb {constraint: unique}
  last_updated: timestamp with time zone
}

disks: {
  shape: sql_table
  id: int {constraint: primary_key}
}

objects.disk -> disks.id
```

```d2svg {layoutEngine=elk, lightTheme="Shirley Temple"}
zone-A: {
  machine A
  machine B: {
    submachine A
    submachine B
  }
}

zone-A.** -> load balancer
```

```d2svg {scale=3, sketch=true}
direction: right
x -> y: hi {
  style.animated: true
}
```

```d2svg {padding=50}
shape: sequence_diagram
alice -> bob: What does it mean\nto be well-adjusted?
bob -> alice: The ability to play bridge or\ngolf as if they were games.
```

```d2svg {class="foo bar", id=xyz, title="My Diagram", sketch=true}
direction: right
A -> B -- C <- D -> E
```

```d2svg
direction: right
A -> B -> C
```

```d2svg {scale=1.25, sketch=true}
direction: right
C -> D -> E
```

```d2svg {lightTheme="Earth Tones", class="foo bar"}
direction: right
E -> F -> G
```

```d2svg {scale=1.25}
direction: right
Database -> S3: backup
Database -> S3
Data
```

```d2svg
High Mem Instance -> EC2 <- High CPU Instance: Hosted By
```

```d2svg
direction: right
X: {tooltip: Total abstinence is easier than perfect moderation}
Y: {tooltip: Gee, I feel kind of LIGHT in the head now,\nknowing I can't make my satellite dish PAYMENTS!}
X -> Y:move your cursor\nover the circles
```

```d2svg
direction: right
plankton -> formula: will steal
formula: {
  label: ""
  equation: |latex
    \lim_{h \rightarrow 0 } \frac{f(x+h)-f(x)}{h}
  |
}
```

```d2svg
xplanation: |md
  # LLMs
  The Large Language Model (LLM) is a powerful AI\
    system that learns from vast amounts of text data.\
  By analyzing patterns and structures in language,\
  it gains an understanding of grammar, facts,\
  and even some reasoning abilities. As users input text,\
  the LLM predicts the most likely next words or phrases\
  to create coherent responses. The model\
  continuously fine-tunes its output, considering both the\
  user's input and its own vast knowledge base.\
  This cutting-edge technology enables LLM to generate human-like text,\
  making it a valuable tool for various applications.
| {
  near: center-left
}

ML Platform -> Pre-trained models
ML Platform -> Model registry
ML Platform -> Compiler
ML Platform -> Validation
ML Platform -> Auditing

Model registry -> Server.Batch Predictor
Server.Online Model Server
```

```d2svg
direction: right
Before and after becoming friends: {
  2007: Office chatter in 2007 {
    shape: sequence_diagram
    alice: Alice
    bob: Bobby
    awkward small talk: {
      alice -> bob: uhm, hi
      bob -> alice: oh, hello
      icebreaker attempt: {
        alice -> bob: what did you have for lunch?
      }
      unfortunate outcome: {
        bob -> alice: that's personal
      }
    }
  }

  2012: Office chatter in 2012 {
    shape: sequence_diagram
    alice: Alice
    bob: Bobby
    alice -> bob: Want to play with ChatGPT?
    bob -> alice: Yes!
    bob -> alice.play: Write a play...
    alice.play -> bob.play: about 2 friends...
    bob.play -> alice.play: who find love...
    alice.play -> bob.play: in a sequence diagram
  }

  2007 -> 2012: Five\nyears\nlater
}
```

```d2svg
users -- via -- teleport

teleport -> jita: "all connections audited and logged"
teleport -> infra

teleport -> identity provider
teleport <- identity provider

users: "" {
  grid-columns: 1

  Engineers: {
    shape: circle
    icon: https://icons.terrastruct.com/essentials%2F365-user.svg
  }
  Machines: {
    shape: circle
    icon: https://icons.terrastruct.com/aws%2FCompute%2FCompute.svg
  }
}

via: "" {
  grid-columns: 1

  https: "HTTPS://"
  kubectl: "> kubectl"
  tsh: "> tsh"
  api: "> api"
  db clients: "DB Clients"
}

teleport: Teleport {
  grid-rows: 2

  inp: |md
    # Identity Native Proxy
  | {
    width: 300
  }

  Audit Log.icon: https://icons.terrastruct.com/tech%2Flaptop.svg
  Cert Authority.icon: https://icons.terrastruct.com/azure%2FWeb%20Service%20Color%2FApp%20Service%20Certificates.svg
}

jita: "Just-in-time Access via" {
  grid-rows: 1

  Slack.icon: https://icons.terrastruct.com/dev%2Fslack.svg
  Mattermost
  Jira
  Pagerduty
  Email.icon: https://icons.terrastruct.com/aws%2F_General%2FAWS-Email_light-bg.svg
}

infra: Infrastructure {
  grid-rows: 2

  ssh.icon: https://icons.terrastruct.com/essentials%2F112-server.svg
  Kubernetes.icon: https://icons.terrastruct.com/azure%2F_Companies%2FKubernetes.svg
  My SQL.icon: https://icons.terrastruct.com/dev%2Fmysql.svg
  MongoDB.icon: https://icons.terrastruct.com/dev%2Fmongodb.svg
  PSQL.icon: https://icons.terrastruct.com/dev%2Fpostgresql.svg
  Windows.icon: https://icons.terrastruct.com/dev%2Fwindows.svg
}

identity provider: Indentity Provider {
  icon: https://icons.terrastruct.com/azure%2FIdentity%20Service%20Color%2FIdentity%20governance.svg
}
```

```d2svg
vars: {
  d2-config: {
    layout-engine: elk
    # Terminal theme code
    theme-id: 300
  }
}
network: {
  cell tower: {
    satellites: {
      shape: stored_data
      style.multiple: true
    }

    transmitter

    satellites -> transmitter: send
    satellites -> transmitter: send
    satellites -> transmitter: send
  }

  online portal: {
    ui: {shape: hexagon}
  }

  data processor: {
    storage: {
      shape: cylinder
      style.multiple: true
    }
  }

  cell tower.transmitter -> data processor.storage: phone logs
}

user: {
  shape: person
  width: 130
}

user -> network.cell tower: make call
user -> network.online portal.ui: access {
  style.stroke-dash: 3
}

api server -> network.online portal.ui: display
api server -> logs: persist
logs: {shape: page; style.multiple: true}

network.data processor -> api server
```

```d2svg
DebitCard: Debit card {
  shape: class
  +cardno
  +ownedBy

  +access()
}

Bank: {
  shape: class
  +code
  +address

  +manages()
  +maintains()
}

ATMInfo: ATM info {
  shape: class
  +location
  +manageBy

  +identifies()
  +transactions()
}

Customer: {
  shape: class
  +name
  +address
  +dob

  +owns()
}

Account: {
  shape: class
  +type
  +owner
}

ATMTransaction: ATM Transaction {
  shape: class
  +transactionId
  +date
  +type

  +modifies()
}

CurrentAccount: Current account {
  shape: class
  +accountNo
  +balance

  +debit()
  +credit()
}

SavingAccount: Saving account {
  shape: class
  +accountNo
  +balance

  +debit()
  +credit()
}

WidthdrawlTransaction: Withdrawl transaction {
  shape: class
  +amount

  +Withdrawl()
}

QueryTransaction: Query transaction {
  shape: class
  +query
  +type

  +queryProcessing()
}

TransferTransaction: Transfer transaction {
  shape: class
  +account
  +accountNo
}

PinValidation: Pin validation transaction {
  shape: class
  +oldPin
  +newPin

  +pinChange()
}

DebitCard -- Bank: manages {
  source-arrowhead: 1..*
  target-arrowhead: 1
}

Bank -- ATMInfo: maintains {
  source-arrowhead: 1
  target-arrowhead: 1
}

Bank -- Customer: +has {
  source-arrowhead: 1
  target-arrowhead: 1
}

DebitCard -- Customer: +owns {
  source-arrowhead: 0..*
  target-arrowhead: 1..*
}

DebitCard -- Account: +provides access to {
  source-arrowhead: *
  target-arrowhead: 1..*
}

Customer -- Account: owns {
  source-arrowhead: 1..*
  target-arrowhead: 1..*
}

ATMInfo -- ATMTransaction: +identifies {
  source-arrowhead: 1
  target-arrowhead: *
}

ATMTransaction -> Account: modifies {
  source-arrowhead: *
  target-arrowhead: 1
}

CurrentAccount -> Account: {
  target-arrowhead.shape: triangle
  target-arrowhead.style.filled: false
}

SavingAccount -> Account: {
  target-arrowhead.shape: triangle
  target-arrowhead.style.filled: false
}

WidthdrawlTransaction -> ATMTransaction: {
  target-arrowhead.shape: triangle
  target-arrowhead.style.filled: false
}
QueryTransaction -> ATMTransaction: {
  target-arrowhead.shape: triangle
  target-arrowhead.style.filled: false
}
TransferTransaction -> ATMTransaction: {
  target-arrowhead.shape: triangle
  target-arrowhead.style.filled: false
}
PinValidation -> ATMTransaction: {
  target-arrowhead.shape: triangle
  target-arrowhead.style.filled: false
}
```
