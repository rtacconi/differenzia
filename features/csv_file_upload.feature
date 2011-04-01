Feature: CSV file upload
  In order to search for a customer
  As an admin
  I want to be able to upload a csv file with customers data

  Background:
    Given I have one user with email "admin@differenzia.com" role "admin" and password "password"

  @wip
  Scenario: Uploading a valid file with customers data
    When I go to the csv import page
    And I upload a file with valid customers data
    Then I should see "Original path"

  @wip  
  Scenario: Uploading a malformed file
    When I go to the csv import page
    And I upload a malformed file
    Then I should be sent to 500.html page


