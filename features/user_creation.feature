Feature: User creation

  Scenario: Create user
    Given I am a guest
    When I go to the sign in page
    And I fill in "user_email" with "admin@differenzia.com"
    And I fill in "user_password" with "adminadmin"
    And I press "Sign in"
    And I follow "Operators"
    Then I should see the list of users
