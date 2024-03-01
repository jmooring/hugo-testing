/// <reference types="cypress" />

import {Paths} from "../support/util";

context('Site', () => {

    beforeEach(() => cy.visit(Paths.home));

    it('redirects to English by default', () => {
        // We should land in the English version
        cy.isAt(Paths.en.home);

        // There's a cookie consent bar. Close it
        cy.get('.cc-window').should('contain.text', 'This website uses cookies.').should('be.visible')
            .contains('a', 'Got it!').click();
        cy.get('.cc-window').should('not.be.visible');
    });

    it('requests Google Analytics script in head', () => {
        // Check there's a script in the <head>
        cy.get('head > script[src^="https://www.googletagmanager.com/"]').should('have.attr', 'src', 'https://www.googletagmanager.com/gtag/js?id=G-XK4422MN2R');
        // Check the config is properly set on the page
        cy.window().should(w => expect((w as any).dataLayer.find(e => e[0] === 'config')[1]).eq('G-XK4422MN2R'));
    });
});
