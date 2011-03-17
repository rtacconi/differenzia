Feature: User creation

  Background:
    Given I have one user with email "admin@differenzia.com" role "admin" and password "adminadmin"

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
    And I fill in "user_first_name" with "John"
    And I fill in "user_last_name" with "Doe"
    And I fill in "user_email" with "new_user@differenzia.com"
    And I press "Crea Operatore"
    And I should see "Il nuovo utente "
