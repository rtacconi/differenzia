Feature: CSV file upload
  In order to search for a customer
  As an admin
  I want to be able to upload a csv file with customers data

  Scenario: Uploading a valid file with data for the customers
    Given I am an admin user
    When I visit the csv import page
    And I upload a file with valid data for the customers
    Then I should be sent to the csv uploaded page
    And I should see "Uploaded successfully!"

