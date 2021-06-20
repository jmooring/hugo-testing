+++
title = "VectorJS - Animate Along Path"
date = 2021-06-20T09:31:25-07:00
draft = false
+++
{{< vectorjs >}}
<div id="animate-along-path" class="vertical-center i-container"></div>
<script type="module" src="https://vectorjs.org/examples/interaction/animate-along-path.js"></script>
{{< /vectorjs >}}

{{< vectorjs >}}
<div id="foo" class="vertical-center i-container"></div>
<script type="module">
import { Interactive } from 'https://vectorjs.org/index.js';
let interactive = new Interactive('foo');
interactive.width = 736;
interactive.height = 225;
interactive.border = true;
let circle = interactive.circle(interactive.width / 2, interactive.height / 3, 50);
circle.classList.add('default');
let displayCircle = interactive.circle(0, 0, 6);
displayCircle.style.fill = '#333333';
let scrubber = interactive.scrubber(100, 175, {});
let pathLength = circle.getTotalLength();
function animate() {
    let currentPosition = scrubber.value / (scrubber.max - scrubber.min);
    let point = circle.getPointAtLength(currentPosition * pathLength);
    displayCircle.cx = point.x;
    displayCircle.cy = point.y;
    requestAnimationFrame(animate);
}
requestAnimationFrame(animate);
</script>
{{< /vectorjs >}}
