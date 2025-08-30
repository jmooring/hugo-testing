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
  const iconChangeTimeout = 1300;
  const containers = document.querySelectorAll(`.${containerClass}`);

  containers.forEach(container => {
    const button = document.createElement('button');
    button.className = buttonClass;
    button.innerHTML = icons.faCopyRegular;
    container.prepend(button);
  });

  const clipboard = new ClipboardJS(`.${buttonClass}`, {
    target: function(trigger) {
      return trigger.nextElementSibling;
    }
  });

  clipboard.on('success', (e) => {
    if (e.action === 'copy') {
      const originalIcon = e.trigger.innerHTML;
      e.trigger.innerHTML = icons.faCheck;

      setTimeout(() => {
        e.trigger.innerHTML = originalIcon;
        e.clearSelection();
      }, iconChangeTimeout);
    }

  });

  clipboard.on('error', (e) => {
    console.error('ClipboardJS Error:', e.action, e.trigger);

    const originalIcon = e.trigger.innerHTML;
    e.trigger.innerHTML = icons.faBomb; // Assuming you have a cross or 'times' icon

    setTimeout(() => {
      e.trigger.innerHTML = originalIcon;
    }, iconChangeTimeout);
  });
}

export { addCopyToClipboardButtons }
