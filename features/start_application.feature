Feature: Starting the application
  In order access the dashboard
  As a user
  I have to login
  
  Scenario: User redirected to login
    Given I am not authenticated
    When I access the root of the application
    Then I should see "Email"
    And I should see "Password"
    And I should see "Forgot your password?"
