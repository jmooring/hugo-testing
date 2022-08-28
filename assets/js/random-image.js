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
  el.alt = image.alt;
  el.src = image.src;
  el.width = image.width;
  el.height = image.height;
}

window.onload = function() {
  els = document.getElementsByClassName('random-image');
  [...els].forEach((el) => {
    // Preload images.
    const images = JSON.parse(el.dataset.images);
    images.forEach((img) => {
      new Image().src = img.src;
    });
    // Shuffle images.
    shuffleImage(el);
  });
}
