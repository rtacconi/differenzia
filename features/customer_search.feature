Feature: Customer search

  Background:
    Given I have one user with email "user@differenzia.com" role "user" and password "password"
    And I have a customer

  @culerity
  Scenario: search for a customer 
    Given I am authenticated with email "user@differenzia.com" and password "password"
    And save_and_open_page
    When I follow "Customers"
    And I fill in "customer_full_name" with "User"
    Then I should see "Data di nascita"
    And I should see "Codice fiscale"
    And I should see "User-0"
    And I fill in "customer_full_name" with ""
    And I should not see "User-0"