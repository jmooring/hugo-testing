# Segmentation test

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b segmentation-test https://github.com/jmooring/hugo-testing segmentation-test
cd segmentation-test
rm -rf public/ && hugo build --renderSegments segment1 && tree public
```
