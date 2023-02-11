document.addEventListener('DOMContentLoaded', function(event) {
  const el = document.getElementById('foo');
  if (el) {
    console.log(el.dataset.members)
  }
});
