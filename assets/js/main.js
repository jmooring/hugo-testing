import * as timeago from 'timeago.js';
import { de, en_US as en, fr } from 'timeago.js/lib/lang';

window.addEventListener('DOMContentLoaded', (event) => {
  const els = document.querySelectorAll('time.fuzzy');
  if (els.length) {
    timeago.register('de', de);
    timeago.register('en', en);
    timeago.register('fr', fr);
    const locale = (navigator.language) ? navigator.language.substring(0,2) : 'en';
    timeago.render(els, locale);
  }
});
