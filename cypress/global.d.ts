/// <reference types="cypress" />

declare namespace Cypress {

    interface Chainable {

        /**
         * Assert the current URL corresponds to the given relative path.
         * @param expected Literal path or a regex to match the current path against
         */
        isAt(expected: string | RegExp): Chainable<string>;
    }
}
