Feature: List of Products
  As an API consumer
  I want to list all Hipster Products 
  So that I can make my shopping list.

  Scenario: I should be able to list all products
    When I GET /
    Then response code should be 200
    And response body path $ should be of type array with length 9

   Scenario: I should be able to identify a product by its ID
    When I GET ?id=9SIQT8TOJO
    Then response code should be 200
    And response body path $[0].name.name should be City Bike

  Scenario: I should receive an empty array error for non-existing codes
    When I GET ?id=xyz
    Then response code should be 404
    And response body path $ should be of type array with length 0


