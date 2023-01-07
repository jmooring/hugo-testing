export function showNext() {
  const next = document.getElementById('shownext-list').lastElementChild.dataset.shownext;
  if (next) {
    const xhttp = new XMLHttpRequest();
    xhttp.open('GET', next, true);
    xhttp.send();
    xhttp.onload = function() {
      // Create list item
      const newNode = document.createElement('div');
      newNode.innerHTML = this.responseText;
      const listItem = newNode.firstElementChild;
      // Append list item and scroll into view
      const list = document.getElementById('shownext-list');
      list.insertBefore(listItem, null);
      listItem.scrollIntoView();
      // Hide the button after appending the last item
      if (!listItem.dataset.shownext) {
        document.getElementById('shownext-btn').style.display = 'none';
      }
    }
  }
}

(function() {
  window.addEventListener('DOMContentLoaded', () => {
    el = document.getElementById('shownext-btn');
    if (el) {
      el.addEventListener('click', showNext);
    }
  });
})();
