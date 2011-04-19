Feature: Customer search

  Background:
    Given I have one user with email "user@differenzia.com" role "user" and password "password"
    And I have a customer

  @javascript
  Scenario: search for a customer 
    Given I am authenticated as user with email "user@differenzia.com" and password "password"
    When I fill in "customer_search" with "*"
    Then I should see "Data di nascita"
    And I should see "Codice fiscale"