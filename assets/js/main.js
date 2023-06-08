document.addEventListener('DOMContentLoaded', function() {
  const el = document.getElementById('locations');
  if (el) {
    const locations = JSON.parse(el.dataset.locations);
    console.log(locations);
  }
});
