{
  const root = document.documentElement;
  const btn = document.getElementById('theme-toggle');
  const stored = localStorage.getItem('theme');

  if (stored === 'dark') {
    root.classList.add('dark');
  }

  btn.addEventListener('click', () => {
    root.classList.toggle('dark');
    localStorage.setItem('theme', root.classList.contains('dark') ? 'dark' : 'light');
  });
}
