Feature: User creation

  Background:
    Given I have one user with email "admin@differenzia.com" role "admin" and password "password"
    
  Scenario: Testing already signed in
    Given I am authenticated with email "admin@differenzia.com" and password "password"
    When I am in the users page
    And I follow "New user"
    And I fill in "user_email" with "operator1@differenzia.com"
    And I fill in "user_first_name" with "John"
    And I fill in "user_last_name" with "Doe"
    And I fill in "user_email" with "new_user@differenzia.com"
    And I fill in "user_password" with "password"
    And I fill in "user_password_confirmation" with "password"
    And I press "Create User"
    Then I should see "new_user@differenzia.com"
