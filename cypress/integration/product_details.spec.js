describe('Product Details', () => {
  it('navigates from home page to product detail page', () => {
    cy.visit('/'); 
    cy.get('.products article .product-name a').first().click(); 
  });
});
