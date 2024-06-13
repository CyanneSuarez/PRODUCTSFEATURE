# features/products.feature

Feature: Product management

  Background:
    Given the following products
      | id | name      | category    | availability  |
      | 1  | Product 1 | Electronics | In Stock      |
      | 2  | Product 2 | Electronics | Out of Stock  |
      | 3  | Product 3 | Furniture   | In Stock      |

  Scenario: Updating a product
    Given I have a product with id 1
    When I update the product with the following details
      | name      | category    | availability  |
      | New Name  | New Category| Out of Stock  |
    Then the product should be updated with the new details
      | id | name      | category    | availability  |
      | 1  | New Name  | New Category| Out of Stock  |
