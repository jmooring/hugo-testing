document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll("p").forEach(function(el) {
    if (!el.hasAttribute('dir')) {
    el.dir = "auto";
    }
  });
});
