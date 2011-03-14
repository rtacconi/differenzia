Feature: Authentication

  Scenario: Login
    Given I have a user with email address "mrsanna1@gmail.com"
    When I go to the sign_in page
    And I fill in "user_email" with "mrsanna1@gmail.com"
    And I fill in "user_password" with "secret"
    Then I should see "Nominativo:"

