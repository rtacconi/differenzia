Feature: Authentication

  Scenario: Login
    Given I have a user with email address "mauro@differezia.it"
    When I go to the sign in page
    And I fill in "user_email" with "mauro@differenzia.it"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "Nominativo:"

