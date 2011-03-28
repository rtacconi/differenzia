Feature: Customer search

  @javascript
  Scenario: search for a customer
    Given I am signed in
    When I go to the root page
    And I fill in "customer_search" with "mauro"
    #When I fill in "user_password" with "password"
    #When I press "Sign in"
    Then I should see "Full name"
