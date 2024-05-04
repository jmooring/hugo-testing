// https://clipboardjs.com

import ClipboardJS from 'clipboard';
document.addEventListener('DOMContentLoaded', function() {

  var clipboard = new ClipboardJS('.copy-btn-fenced-code-block', {
    target: function(trigger) {
      return trigger.nextElementSibling;
    }
  });

  clipboard.on('success', function(e) {
    if (e.action == 'copy') {
      setTimeout(() => {
        e.clearSelection();
      }, 1300);
    }
  });

  clipboard.on('error', function(e) {
    console.error('Action:', e.action);
    console.error('Trigger:', e.trigger);
  });

});
