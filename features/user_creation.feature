Feature: User creation

  Scenario: Create user
    Given I am a valid user with role "admin"
    When I go to the root page
    And I follow "Operators"
    Then I should see the list of users
