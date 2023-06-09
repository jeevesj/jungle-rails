describe('Add to cart', function() {
  it('adds a product to the cart', function() {
      // Visit home page
      cy.visit('http://localhost:3000')

      // Capture the initial count of the cart
      cy.get('.cart-count')
        .invoke('text')
        .then((text) => {
          const initialCount = parseInt(text)

          // Click the 'Add to Cart' button of the first product
          cy.get('.add-to-cart').first().click()

          // Assert that the count of the cart button has increased by 1
          cy.get('.cart-count')
            .invoke('text')
            .should((text) => {
              expect(parseInt(text)).to.eq(initialCount + 1)
            })
        })
  })
})