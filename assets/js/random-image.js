function shuffleImage(el) {
  let key = el.id + '-index';
  let lastIndex = sessionStorage.getItem(key)
  const images = JSON.parse(el.dataset.images);
  while (true) {
    index = Math.floor(Math.random() * images.length);
    if (index != lastIndex) {
      break;
    }
  }
  sessionStorage.setItem(key, index);
  const image = images[index];
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
