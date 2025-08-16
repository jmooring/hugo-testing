document.addEventListener('DOMContentLoaded', () => {
  const tocLinks = document.querySelectorAll('#TableOfContents a[href]');

  tocLinks.forEach(tocLink => {
    tocLink.addEventListener('click', event => {
      const targetElementId = tocLink.getAttribute('href').substring(1);
      const targetElement = document.getElementById(targetElementId);

      if (targetElement) {
        // Find the closest <details> ancestor
        const detailsParent = targetElement.closest('details');

        if (detailsParent) {
          event.preventDefault();
          detailsParent.open = true;

          // Scroll the <summary> element into view
          const summaryElement = detailsParent.querySelector('summary');
          if (summaryElement) {
            summaryElement.scrollIntoView({ behavior: 'smooth' });
          } else {
            // Fallback to scrolling the <details> element
            detailsParent.scrollIntoView({ behavior: 'smooth' });
          }
        }
      }
    });
  });
});
