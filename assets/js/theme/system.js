const root = document.documentElement;
const mq = window.matchMedia('(prefers-color-scheme: dark)');

const applyTheme = () => root.classList.toggle('dark', mq.matches);

mq.addEventListener('change', applyTheme);
applyTheme();
