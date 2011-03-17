Feature: User creation

  Background:
    Given I have an admin user with "admin@differenzia.com" as email

  Scenario: Authenticate and go to the users page
    Given I am not authenticated
    When I go to the sign in page
    And I fill in "user_email" with "admin@differenzia.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I go to the users page
    And I should see "Nuovo Operatore"
    And I follow "Nuovo Operatore"
    And I fill in "user_email" with "op1@differenzia.com"
    And I press "Crea Operatore"