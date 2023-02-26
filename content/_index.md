+++
title = 'Hugo Forum Topic #43172'
linkTitle = 'Home'
date = 2023-02-26T08:03:16-08:00
draft = false
details = 'https://discourse.gohugo.io/t/43172'
description = "Chart.js not being displayed"
+++

```chartjs
{
    type: 'bar',
    data: {
      labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
      datasets: [{
        label: '# of Votes',
        data: [12, 19, 3, 5, 2, 3],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  }
```
