document.addEventListener('DOMContentLoaded', function() {
  const els = document.querySelectorAll('ul.tasklist li input');
  els.forEach(el => {
    el.setAttribute('aria-label', 'Is task complete?');
  });
});
