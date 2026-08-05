const root = document.documentElement;
const fieldset = document.getElementById('theme-switcher');
const mq = window.matchMedia('(prefers-color-scheme: dark)');

const applyTheme = (theme) => {
  if (theme === 'dark') {
    root.classList.add('dark');
  } else if (theme === 'light') {
    root.classList.remove('dark');
  } else {
    root.classList.toggle('dark', mq.matches);
  }
  fieldset.querySelector(`input[value="${theme ?? 'system'}"]`).checked = true;
};

// Keep class in sync with system preference when no manual override is set.
mq.addEventListener('change', () => {
  if (!localStorage.getItem('theme')) {
    root.classList.toggle('dark', mq.matches);
  }
});

applyTheme(localStorage.getItem('theme'));

fieldset.addEventListener('change', (e) => {
  const next = e.target.value === 'system' ? null : e.target.value;
  if (next === null) {
    localStorage.removeItem('theme');
  } else {
    localStorage.setItem('theme', next);
  }
  applyTheme(next);
});
