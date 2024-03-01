/// <reference types="cypress" />

const { config } = Cypress;
const baseUrl = config('baseUrl');

Cypress.Commands.add('isAt', (expected: string | RegExp) => cy.url().should((url) => {
    // The URL must begin with the base URL
    expect(url.substring(0, baseUrl.length)).eq(baseUrl);

    // Compare the path part
    const actual = url.substring(baseUrl.length);
    if (expected instanceof RegExp) {
        expect(actual).to.match(expected);
    } else {
        expect(actual).eq(expected);
    }
}));
