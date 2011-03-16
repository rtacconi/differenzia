@no-txn
Feature: Authentication

  Background:
    Given I am not authenticated

  Scenario: Sign in as user
    Given I have one user "User" "User" with email "user@differenzia.com" role "user" password "useruser" and password_confirmation "useruser"
    When I go to the sign in page
    And I fill in "user_email" with "user@differenzia.com"
    And I fill in "user_password" with "useruser"
    And I press "Sign in"
    Then I should see "user"

  Scenario: Sign in as manager
    Given I have one user "Manager" "Manager" with email "manager@differenzia.com" role "manager" password "managermanager" and password_confirmation "managermanager"
    When I go to the sign in page
    And I fill in "user_email" with "manager@differenzia.com"
    And I fill in "user_password" with "managermanager"
    And I press "Sign in"
    Then I should see "manager"
    
  Scenario: Sign in as admin
    Given I have one user "Admin" "Admin" with email "admin@differenzia.com" role "admin" password "adminadmin" and password_confirmation "adminadmin"
    When I go to the sign in page
    And I fill in "user_email" with "admin@differenzia.com"
    And I fill in "user_password" with "adminadmin"
    And I press "Sign in"
    Then I should see "admin"
    And I should see "Operators" within "a"
