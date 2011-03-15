Feature: User creation

  Scenario: Create user
    Given I am a user with "admin" role
    When I press "Operators"
    Then I should got to the users page
    And I should see "First name"
    And I should see "Last name"
    And I should see "Email" 
