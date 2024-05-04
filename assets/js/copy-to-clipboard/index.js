import ClipboardJS from 'clipboard';
import * as icons from './icons.js'

/**
 * Adds a copy-to-clipboard button to each container element as its first
 * child. The copy target is the button element's next sibling.
 *
 * @param   {string}  containerClass  One of the classes in the container elements's class attribute.
 * @param   {string}  [buttonClass=copy-button]     The button element's class attribute.
 *
 * @return  {void}
 */
function addCopyToClipboardButtons(containerClass, buttonClass = 'copy-button') {
  const containers = document.querySelectorAll(`.${containerClass}`);

  containers.forEach(container => {
    container.insertAdjacentHTML('afterbegin', `<button class="${buttonClass}">${icons.faCopyRegular}</button>`);
  });

  const clipboard = new ClipboardJS(`.${buttonClass}`, {
    target: function(trigger) {
      return trigger.nextElementSibling;
    }
  });

  clipboard.on('success', (e) => {
    if (e.action == 'copy') {
      setTimeout(() => {
        e.clearSelection();
      }, 1300);
    }
  });

  clipboard.on('error', (e) => {
    console.error('ClipboardJS Error:', e.action, e.trigger);
  });
}

export { addCopyToClipboardButtons }
