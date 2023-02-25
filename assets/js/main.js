// Infinite Ajax Scroll (ias)
//
// https://github.com/metafizzy/infinite-scroll
// https://docs.infiniteajaxscroll.com/

import InfiniteAjaxScroll from '@webcreate/infinite-ajax-scroll';
window.InfiniteAjaxScroll = InfiniteAjaxScroll;

document.addEventListener('DOMContentLoaded', function() {
  const iasContainers = document.getElementsByClassName('ias-container');
  if (iasContainers.length > 0) {
    const ias = new InfiniteAjaxScroll('.ias-container', {
      item: '.ias-item',
      next: '.ias-next',
      pagination: '.ias-pagination',
      logger: false, // set to true to enable console logging
    });
    ias.on('last', function() {
      const el = document.querySelector('.ias-no-more-items');
      el.style.opacity = '1';
    })
  }
});
