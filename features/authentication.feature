Feature: Authentication

  Scenario: Sign in as user
    Given I have a user with email address "mrsanna1@gmail.com"
    When I go to the sign in page
    And I fill in "user_email" with "mrsanna1@gmail.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "user"
    
  Scenario: Sign in as admin
    Given I am a guest
    When I go to the sign in page
    And I fill in "user_email" with "admin@differenzia.com"
    And I fill in "user_password" with "adminadmin"
    And I press "Sign in"
    Then I should see "admin"
    And I should see "Operators"
