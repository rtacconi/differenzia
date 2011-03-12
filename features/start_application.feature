Feature: Starting the application
  In order access the dashboard
  As a guest
  I have to login
  
  Scenario: Guest redirected to login
    Given I am not authenticated
    When I access the root of the application
    Then I should redirect to sign_in page

