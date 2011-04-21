Feature: Authentication
	In order to go to the root page of application
	As an user
	I must authenticate

  Background:
    Given I have one user with email "user@differenzia.com" role "user" and password "password"
    And I have one user with email "manager@differenzia.com" role "manager" and password "password"
    And I have one user with email "admin@differenzia.com" role "admin" and password "password"

  Scenario: Sign in as user
    Given I am not authenticated
    When I go to the sign in page
    And I fill in "user_email" with "user@differenzia.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "user"
    And I should see the link "Dashboard"
    And I should see the link "Customers"
    And I should not see the link "Operators"

  Scenario: Sign in as manager
    Given I am not authenticated
    When I go to the sign in page
    And I fill in "user_email" with "manager@differenzia.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "manager"
    And I should see the link "Dashboard"
    And I should see the link "Customers"
    And I should not see the link "Operators"
    
  Scenario: Sign in as admin
    Given I am not authenticated
    When I go to the sign in page
    And I fill in "user_email" with "admin@differenzia.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "admin"
    And I should see the link "Dashboard"
    And I should see the link "Customers"
    And I should see the link "Operators"
