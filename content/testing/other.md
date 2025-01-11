---
title: Other
weight: 40
---

```d2svg {scale=1 padding=20 layoutEngine=elk lightTheme="Neutral Grey"}
# style

classes: {
  base: {
    height: 50
    style: {
      font-color: white
      font-size: 16
    }
  }
  home: {
    style: {
      fill: "#0078af"
    }
  }
  section: {
    style: {
      fill: "#bc1577"
    }
  }
  taxonomy: {
    style: {
      fill: "#8844cc"
    }
  }
  term: {
    style: {
      fill: "#3733e9"
    }
  }
  page: {
    style: {
      fill: "#00886d"
    }
  }
}

# structure

n1 -- n1_1
n1 -- n1_2
n1 -- n1_3

n1_1 -- n1_1_1
n1_1 -- n1_1_2

n1_2 -- n1_2_1
n1_2 -- n1_2_2

n1_3 -- n1_3_1
n1_3 -- n1_3_2

n1_3_1 -- n1_3_1_1
n1_3_1 -- n1_3_1_2

n1_3_2 -- n1_3_2_1
n1_3_2 -- n1_3_2_2

# nodes

n1 {
  label: Home Page
  class: [base; home]
}

n1_1 {
  label: Section A
  class: [base; section]
}

n1_2 {
  label: Section B
  class: [base; section]
}

n1_3 {
  label: Taxonomy A
  class: [base; taxonomy]
}

n1_1_1 {
  label: Page 1
  class: [base; page]
}

n1_1_2 {
  label: Page 2
  class: [base; page]
}

n1_2_1 {
  label: Page 3
  class: [base; page]
}

n1_2_2 {
  label: Page 4
  class: [base; page]
}

n1_3_1 {
  label: Term 1
  class: [base; term]
}

n1_3_2 {
  label: Term 2
  class: [base; term]
}

n1_3_1_1 {
  label: Page 1
  class: [base; page]
}

n1_3_1_2 {
  label: Page 3
  class: [base; page]
}

n1_3_2_1 {
  label: Page 2
  class: [base; page]
}

n1_3_2_2 {
  label: Page 4
  class: [base; page]
}
```
