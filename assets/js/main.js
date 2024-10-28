// https://github.com/bryanbraun/anchorjs

import AnchorJS from 'anchor-js';
document.addEventListener('DOMContentLoaded', function() {
  const anchors = new AnchorJS();
  anchors.add('h2:not(.no-anchor)');
  anchors.add('h3:not(.no-anchor)');
  anchors.add('h4:not(.no-anchor)');
  anchors.add('h5:not(.no-anchor)');
  anchors.add('h6:not(.no-anchor)');
});
