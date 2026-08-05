import { switcher } from '@params';

if (switcher === 'light-dark') {
  import('./theme/light-dark.js');
} else if (switcher === 'system') {
  import('./theme/system.js');
} else {
  import('./theme/light-dark-system.js');
}
