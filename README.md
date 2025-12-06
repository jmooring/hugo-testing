# Hugo Forum Topic #47870

Details: <https://discourse.gohugo.io/t/47870>

Description: Calculate first day of current month and last day of current month

## Details

The "photos" section displays a customizable number of monthly calendars on a single page. This quantity is controlled by the `paginate.pagerSize` setting in the site configuration.

The entire section is paginated by month, allowing users to navigate through the collection of monthly calendars. Within each monthly calendar, a small image is displayed in the cell corresponding to the day. Clicking on this daily photo links to a dedicated date page which may contain one or more full-size images associated with that specific day.

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-47870 https://github.com/jmooring/hugo-testing hugo-forum-topic-47870
cd hugo-forum-topic-47870
hugo server
```
