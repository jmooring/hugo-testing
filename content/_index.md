+++
title = 'Hugo Forum Topic #41501'
date = 2022-11-18T15:36:20-08:00
draft = false
details = 'https://discourse.gohugo.io/t/41501'
description = "Previous and next 3 posts"
weight = 2000
+++

Some decent examples:

- <http://localhost:1313/products/file-010/>
- <http://localhost:1313/products/product-2/file-255/>
- <http://localhost:1313/products/product-2/benefits/file-049/>
- <http://localhost:1313/products/product-2/benefits/benefit-1/file-091/>

---

<details>
<summary>Content directory</summary>

```text
# The filename for regular pages includes the page weight.

content/
├── products/
│   ├── product-1/
│   │   ├── benefits/
│   │   │   ├── benefit-1/
│   │   │   │   ├── file-003.md
│   │   │   │   ├── file-013.md
│   │   │   │   ├── file-023.md
│   │   │   │   ├── file-033.md
│   │   │   │   ├── file-043.md
│   │   │   │   ├── file-253.md
│   │   │   │   ├── file-263.md
│   │   │   │   ├── file-273.md
│   │   │   │   ├── file-283.md
│   │   │   │   ├── file-293.md
│   │   │   │   └── _index.md
│   │   │   ├── benefit-2/
│   │   │   │   ├── file-004.md
│   │   │   │   ├── file-014.md
│   │   │   │   ├── file-024.md
│   │   │   │   ├── file-034.md
│   │   │   │   ├── file-044.md
│   │   │   │   ├── file-254.md
│   │   │   │   ├── file-264.md
│   │   │   │   ├── file-274.md
│   │   │   │   ├── file-284.md
│   │   │   │   ├── file-294.md
│   │   │   │   └── _index.md
│   │   │   ├── file-002.md
│   │   │   ├── file-012.md
│   │   │   ├── file-022.md
│   │   │   ├── file-032.md
│   │   │   ├── file-042.md
│   │   │   ├── file-252.md
│   │   │   ├── file-262.md
│   │   │   ├── file-272.md
│   │   │   ├── file-282.md
│   │   │   ├── file-292.md
│   │   │   └── _index.md
│   │   ├── features/
│   │   │   ├── feature-1/
│   │   │   │   ├── file-007.md
│   │   │   │   ├── file-017.md
│   │   │   │   ├── file-027.md
│   │   │   │   ├── file-037.md
│   │   │   │   ├── file-047.md
│   │   │   │   ├── file-257.md
│   │   │   │   ├── file-267.md
│   │   │   │   ├── file-277.md
│   │   │   │   ├── file-287.md
│   │   │   │   ├── file-297.md
│   │   │   │   └── _index.md
│   │   │   ├── feature-2/
│   │   │   │   ├── file-008.md
│   │   │   │   ├── file-018.md
│   │   │   │   ├── file-028.md
│   │   │   │   ├── file-038.md
│   │   │   │   ├── file-048.md
│   │   │   │   ├── file-258.md
│   │   │   │   ├── file-268.md
│   │   │   │   ├── file-278.md
│   │   │   │   ├── file-288.md
│   │   │   │   ├── file-298.md
│   │   │   │   └── _index.md
│   │   │   ├── file-006.md
│   │   │   ├── file-016.md
│   │   │   ├── file-026.md
│   │   │   ├── file-036.md
│   │   │   ├── file-046.md
│   │   │   ├── file-256.md
│   │   │   ├── file-266.md
│   │   │   ├── file-276.md
│   │   │   ├── file-286.md
│   │   │   ├── file-296.md
│   │   │   └── _index.md
│   │   ├── file-001.md
│   │   ├── file-011.md
│   │   ├── file-021.md
│   │   ├── file-031.md
│   │   ├── file-041.md
│   │   ├── file-251.md
│   │   ├── file-261.md
│   │   ├── file-271.md
│   │   ├── file-281.md
│   │   ├── file-291.md
│   │   └── _index.md
│   ├── product-2/
│   │   ├── benefits/
│   │   │   ├── benefit-1/
│   │   │   │   ├── file-051.md
│   │   │   │   ├── file-061.md
│   │   │   │   ├── file-071.md
│   │   │   │   ├── file-081.md
│   │   │   │   ├── file-091.md
│   │   │   │   ├── file-201.md
│   │   │   │   ├── file-211.md
│   │   │   │   ├── file-221.md
│   │   │   │   ├── file-231.md
│   │   │   │   ├── file-241.md
│   │   │   │   └── _index.md
│   │   │   ├── benefit-2/
│   │   │   │   ├── file-052.md
│   │   │   │   ├── file-062.md
│   │   │   │   ├── file-072.md
│   │   │   │   ├── file-082.md
│   │   │   │   ├── file-092.md
│   │   │   │   ├── file-202.md
│   │   │   │   ├── file-212.md
│   │   │   │   ├── file-222.md
│   │   │   │   ├── file-232.md
│   │   │   │   ├── file-242.md
│   │   │   │   └── _index.md
│   │   │   ├── file-009.md
│   │   │   ├── file-019.md
│   │   │   ├── file-029.md
│   │   │   ├── file-039.md
│   │   │   ├── file-049.md
│   │   │   ├── file-259.md
│   │   │   ├── file-269.md
│   │   │   ├── file-279.md
│   │   │   ├── file-289.md
│   │   │   ├── file-299.md
│   │   │   └── _index.md
│   │   ├── features/
│   │   │   ├── feature-1/
│   │   │   │   ├── file-054.md
│   │   │   │   ├── file-064.md
│   │   │   │   ├── file-074.md
│   │   │   │   ├── file-084.md
│   │   │   │   ├── file-094.md
│   │   │   │   ├── file-204.md
│   │   │   │   ├── file-214.md
│   │   │   │   ├── file-224.md
│   │   │   │   ├── file-234.md
│   │   │   │   ├── file-244.md
│   │   │   │   └── _index.md
│   │   │   ├── feature-2/
│   │   │   │   ├── file-055.md
│   │   │   │   ├── file-065.md
│   │   │   │   ├── file-075.md
│   │   │   │   ├── file-085.md
│   │   │   │   ├── file-095.md
│   │   │   │   ├── file-205.md
│   │   │   │   ├── file-215.md
│   │   │   │   ├── file-225.md
│   │   │   │   ├── file-235.md
│   │   │   │   ├── file-245.md
│   │   │   │   └── _index.md
│   │   │   ├── file-053.md
│   │   │   ├── file-063.md
│   │   │   ├── file-073.md
│   │   │   ├── file-083.md
│   │   │   ├── file-093.md
│   │   │   ├── file-203.md
│   │   │   ├── file-213.md
│   │   │   ├── file-223.md
│   │   │   ├── file-233.md
│   │   │   ├── file-243.md
│   │   │   └── _index.md
│   │   ├── file-005.md
│   │   ├── file-015.md
│   │   ├── file-025.md
│   │   ├── file-035.md
│   │   ├── file-045.md
│   │   ├── file-255.md
│   │   ├── file-265.md
│   │   ├── file-275.md
│   │   ├── file-285.md
│   │   ├── file-295.md
│   │   └── _index.md
│   ├── file-010.md
│   ├── file-020.md
│   ├── file-030.md
│   ├── file-040.md
│   ├── file-050.md
│   ├── file-060.md
│   ├── file-270.md
│   ├── file-280.md
│   ├── file-290.md
│   ├── file-300.md
│   └── _index.md
├── services/
│   ├── service-1/
│   │   ├── deliverables/
│   │   │   ├── deliverable-1/
│   │   │   │   ├── file-059.md
│   │   │   │   ├── file-069.md
│   │   │   │   ├── file-070.md
│   │   │   │   ├── file-079.md
│   │   │   │   ├── file-089.md
│   │   │   │   ├── file-099.md
│   │   │   │   ├── file-209.md
│   │   │   │   ├── file-219.md
│   │   │   │   ├── file-229.md
│   │   │   │   ├── file-239.md
│   │   │   │   ├── file-249.md
│   │   │   │   └── _index.md
│   │   │   ├── deliverable-2/
│   │   │   │   ├── file-080.md
│   │   │   │   ├── file-090.md
│   │   │   │   ├── file-100.md
│   │   │   │   ├── file-110.md
│   │   │   │   ├── file-120.md
│   │   │   │   ├── file-220.md
│   │   │   │   ├── file-230.md
│   │   │   │   ├── file-240.md
│   │   │   │   ├── file-250.md
│   │   │   │   ├── file-260.md
│   │   │   │   └── _index.md
│   │   │   ├── file-058.md
│   │   │   ├── file-068.md
│   │   │   ├── file-078.md
│   │   │   ├── file-088.md
│   │   │   ├── file-098.md
│   │   │   ├── file-208.md
│   │   │   ├── file-218.md
│   │   │   ├── file-228.md
│   │   │   ├── file-238.md
│   │   │   ├── file-248.md
│   │   │   └── _index.md
│   │   ├── faqs/
│   │   │   ├── faq-1/
│   │   │   │   ├── file-102.md
│   │   │   │   ├── file-112.md
│   │   │   │   ├── file-122.md
│   │   │   │   ├── file-132.md
│   │   │   │   ├── file-142.md
│   │   │   │   ├── file-152.md
│   │   │   │   ├── file-162.md
│   │   │   │   ├── file-172.md
│   │   │   │   ├── file-182.md
│   │   │   │   ├── file-192.md
│   │   │   │   └── _index.md
│   │   │   ├── faq-2/
│   │   │   │   ├── file-103.md
│   │   │   │   ├── file-113.md
│   │   │   │   ├── file-123.md
│   │   │   │   ├── file-133.md
│   │   │   │   ├── file-143.md
│   │   │   │   ├── file-153.md
│   │   │   │   ├── file-163.md
│   │   │   │   ├── file-173.md
│   │   │   │   ├── file-183.md
│   │   │   │   ├── file-193.md
│   │   │   │   └── _index.md
│   │   │   ├── file-101.md
│   │   │   ├── file-111.md
│   │   │   ├── file-121.md
│   │   │   ├── file-131.md
│   │   │   ├── file-141.md
│   │   │   ├── file-151.md
│   │   │   ├── file-161.md
│   │   │   ├── file-171.md
│   │   │   ├── file-181.md
│   │   │   ├── file-191.md
│   │   │   └── _index.md
│   │   ├── file-057.md
│   │   ├── file-067.md
│   │   ├── file-077.md
│   │   ├── file-087.md
│   │   ├── file-097.md
│   │   ├── file-207.md
│   │   ├── file-217.md
│   │   ├── file-227.md
│   │   ├── file-237.md
│   │   ├── file-247.md
│   │   └── _index.md
│   ├── service-2/
│   │   ├── deliverables/
│   │   │   ├── deliverable-1/
│   │   │   │   ├── file-106.md
│   │   │   │   ├── file-116.md
│   │   │   │   ├── file-126.md
│   │   │   │   ├── file-136.md
│   │   │   │   ├── file-146.md
│   │   │   │   ├── file-156.md
│   │   │   │   ├── file-166.md
│   │   │   │   ├── file-176.md
│   │   │   │   ├── file-186.md
│   │   │   │   ├── file-196.md
│   │   │   │   └── _index.md
│   │   │   ├── deliverable-2/
│   │   │   │   ├── file-107.md
│   │   │   │   ├── file-117.md
│   │   │   │   ├── file-127.md
│   │   │   │   ├── file-137.md
│   │   │   │   ├── file-147.md
│   │   │   │   ├── file-157.md
│   │   │   │   ├── file-167.md
│   │   │   │   ├── file-177.md
│   │   │   │   ├── file-187.md
│   │   │   │   ├── file-197.md
│   │   │   │   └── _index.md
│   │   │   ├── file-105.md
│   │   │   ├── file-115.md
│   │   │   ├── file-125.md
│   │   │   ├── file-135.md
│   │   │   ├── file-145.md
│   │   │   ├── file-155.md
│   │   │   ├── file-165.md
│   │   │   ├── file-175.md
│   │   │   ├── file-185.md
│   │   │   ├── file-195.md
│   │   │   └── _index.md
│   │   ├── faqs/
│   │   │   ├── faq-1/
│   │   │   │   ├── file-108.md
│   │   │   │   ├── file-118.md
│   │   │   │   ├── file-128.md
│   │   │   │   ├── file-138.md
│   │   │   │   ├── file-148.md
│   │   │   │   ├── file-158.md
│   │   │   │   ├── file-168.md
│   │   │   │   ├── file-178.md
│   │   │   │   ├── file-188.md
│   │   │   │   ├── file-198.md
│   │   │   │   └── _index.md
│   │   │   ├── faq-2/
│   │   │   │   ├── file-109.md
│   │   │   │   ├── file-119.md
│   │   │   │   ├── file-129.md
│   │   │   │   ├── file-139.md
│   │   │   │   ├── file-149.md
│   │   │   │   ├── file-159.md
│   │   │   │   ├── file-169.md
│   │   │   │   ├── file-179.md
│   │   │   │   ├── file-189.md
│   │   │   │   ├── file-199.md
│   │   │   │   └── _index.md
│   │   │   ├── file-130.md
│   │   │   ├── file-140.md
│   │   │   ├── file-150.md
│   │   │   ├── file-160.md
│   │   │   ├── file-170.md
│   │   │   ├── file-180.md
│   │   │   ├── file-190.md
│   │   │   ├── file-200.md
│   │   │   ├── file-210.md
│   │   │   └── _index.md
│   │   ├── file-104.md
│   │   ├── file-114.md
│   │   ├── file-124.md
│   │   ├── file-134.md
│   │   ├── file-144.md
│   │   ├── file-154.md
│   │   ├── file-164.md
│   │   ├── file-174.md
│   │   ├── file-184.md
│   │   ├── file-194.md
│   │   └── _index.md
│   ├── file-056.md
│   ├── file-066.md
│   ├── file-076.md
│   ├── file-086.md
│   ├── file-096.md
│   ├── file-206.md
│   ├── file-216.md
│   ├── file-226.md
│   ├── file-236.md
│   ├── file-246.md
│   └── _index.md
└── _index.md
```
</details>

---
