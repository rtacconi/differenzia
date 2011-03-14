Feature: CSV file upload
  In order to search for a customer
  As an admin
  I want to be able to upload a csv file with customers data

  Scenario: Uploading a valid file with customers data
    Given I am an user with role "ADMIN"
    When I visit the csv import page
    And I upload a file with valid customers data
    Then I should see "File has been uploaded successfully!"

  Scenario: Uploading a malformed file
    Given I am an user with role "ADMIN"
    When I visit the csv import page
    And I upload a malformed file
    Then I should be sent to 500.html page


