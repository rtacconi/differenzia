Feature: Customer search

  Background:
    Given I have one user with email "user@differenzia.com" role "user" and password "password"
    When I go to the sign in page
    And I fill in "user_email" with "user@differenzia.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "user"
    And I should see "Nominativo"


  @wip
  Scenario: search for a customer
    When I go to the root page
    And I fill in "customer_search" with "mauro"
