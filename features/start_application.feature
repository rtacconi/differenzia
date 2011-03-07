Feature: Starting the application
  In order access the dashboard
  As a guest
  I have to login
  
  Scenario: Guest redirected to login
    Given I am a guest
    When I access the root of the application
    Then I should see "Email"
    And I should see "Password"
    And I should see "Forgot your password?"