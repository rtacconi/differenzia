Feature: User creation

  Background:
    Given I have one user with email "admin@differenzia.com" role "admin" and password "adminadmin"

  Scenario: Authenticate and go to the users page
    Given I am not authenticated
    When I go to the sign in page
    And I fill in "user_email" with "admin@differenzia.com"
    And I fill in "user_password" with "adminadmin"
    And I press "Sign in"
    #Then I go to the users page
    Then I should see "Operators"
    And I follow "Operators"
    And I follow "Nuovo Operatore"
    And I fill in "user_email" with "op1@differenzia.com"
    #And I press "Crea Operatore"
    And I fill in "user_first_name" with "John"
    And I fill in "user_last_name" with "Doe"
    And I fill in "user_email" with "new_user@differenzia.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Crea Operatore"
    And I should see "new_user@differenzia.com"
