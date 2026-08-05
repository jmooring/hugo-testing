const root = document.documentElement;
const fieldset = document.getElementById('theme-switcher');

const applyTheme = (theme) => {
  root.classList.toggle('dark', theme === 'dark');
  fieldset.querySelector(`input[value="${theme}"]`).checked = true;
};

applyTheme(localStorage.getItem('theme') ?? 'light');

fieldset.addEventListener('change', (e) => {
  const theme = e.target.value;
  localStorage.setItem('theme', theme);
  applyTheme(theme);
});
