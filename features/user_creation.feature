Feature: User creation

  Scenario: Create user
    Given I am a valid user with role "admin"
    When I go to the root page
    And I click "Operators"
    Then I should go to the users page
    And I should see "First name"
    And I should see "Last name"
    And I should see "Email" 
