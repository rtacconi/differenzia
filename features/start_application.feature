Feature: Starting the application
  In order access the dashboard
  As a guest
  I have to login
  
  Scenario: Guest redirected to login
    Given I am not authenticated
    When I access the root of the application
    Then I should redirect to sign_in page
    #    Then show me the page
    And I should see "Email"
    And I should see "Password"
    And I should see "Forgot your password?"

    Scenario: Access to root application
      Given I am an authenticated user 
      When I access the root of application
      Then I should see "Nominativo"
