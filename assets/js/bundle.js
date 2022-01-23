/**
 * OK
 */
const a = preval`
  module.exports = 1;
`

/**
 * OK
 * Path to required file is /home/jmooring/code/hugo-testing/node_modules/b.js
 * This behaves as described by the `require` documentation.
 */
const b = preval`
  module.exports = require('b.js');
`

/**
 * Path to required file is /home/jmooring/code/hugo-testing/assets/js/c.js
 * According to the `require` documentation, I should be able use:
 *
 *    require('./c.js')
 *
 * But that fails.
 */
const c = preval`
  module.exports = require('/home/jmooring/code/hugo-testing/assets/js/c.js');
  // FAILS module.exports = require('./c.js');
`

/**
 * Path to required file is /home/jmooring/code/hugo-testing/d.js
 * According to the `require` documentation, I should be able use:
 *
 *    require('./../../d.js')
 *
 * But that fails.
 */
 const d = preval`
 module.exports = require('/home/jmooring/code/hugo-testing/d.js');
 // FAILS module.exports = require('./../../d.js')
`
