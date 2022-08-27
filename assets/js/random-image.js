function shuffleImage(el) {
  const images = JSON.parse(el.dataset.images);
  while (true) {
    var index = Math.floor(Math.random() * images.length);
    if (index != el.dataset.index) {
      break;
    }
  }
  const image = images[index];
  el.dataset.index = index;
  el.setAttribute('alt', image.alt)
  el.setAttribute('src', image.relPermalink);
  el.setAttribute('width', image.width);
  el.setAttribute('height', image.height);
}

window.onload = function() {
  els = document.getElementsByClassName('random-image');
  [...els].forEach((el) => {
    shuffleImage(el);
  });
}
