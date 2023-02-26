+++
title = 'Create chart from shortcode'
date = 2023-02-27T07:11:20-08:00
draft = false
+++

{{< chart >}}
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
{{< /chart >}}
