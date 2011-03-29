Feature: Customer search

  @javascript
  Scenario: search for a customer
    Given I am signed in
    When I go to the root page
    And I fill in "customer_search" with "*"
    Then I should see "Nominativo"
    And I should see "Data di nascita"
    And I should see "Codice fiscale"
