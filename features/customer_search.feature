Feature: Customer search

  Background:
    Given I have one user with email "user@differenzia.com" role "user" and password "password"
    And I have a customer

  @javascript
  Scenario: search for a customer 
    Given I am authenticated with email "user@differenzia.com" and password "password"
    And I go to the customers page
    When I fill in "customer_full_name" with "User"
    Then I should see "Date of birth"
    And I should see "SSN"
    And I should see "User-0"
    And I fill in "customer_full_name" with "A very wrong user name"
    And I should not see "User-0"