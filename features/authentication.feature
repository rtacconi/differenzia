Feature: Authentication

  Background:
    Given I am not authenticated

  Scenario: Sign in as user
    When I go to the sign in page
    And I fill in "user_email" with "user@differenzia.com"
    And I fill in "user_password" with "useruser"
    And I press "Sign in"
    Then I should see "user"

  Scenario: Sign in as manager
    When I go to the sign in page
    And I fill in "user_email" with "manager@differenzia.com"
    And I fill in "user_password" with "managermanager"
    And I press "Sign in"
    Then I should see "manager"
    
  Scenario: Sign in as admin
    When I go to the sign in page
    And I fill in "user_email" with "admin@differenzia.com"
    And I fill in "user_password" with "adminadmin"
    And I press "Sign in"
    Then I should see "admin"
    And I should see "Operators" within "a"
