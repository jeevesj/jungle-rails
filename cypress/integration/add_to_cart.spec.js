describe('Add to Cart', function() {
  beforeEach(() => {
    cy.visit('/') 
  })

  it('can add a product to the cart', function() {
    // Initially, the cart should be empty
    cy.get('[data-testid="cart-count"]').should('have.text', '0')

    // Click on 'Add to Cart' button for the first product
    cy.get('[data-testid="add-to-cart"]').first().click()

    // The cart count should increase by 1
    cy.get('[data-testid="cart-count"]').should('have.text', '1')
  })
})