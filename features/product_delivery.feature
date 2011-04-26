Feature: Product delivery

  Background:
    Given I have one user with email "user@differenzia.com" role "user" and password "password"
    And I have "Green bags" as product
    And I have "Blue bags" as product
    And I have a customer with "Blue bags" as product already delivered
    
  Scenario: Find deliveries of a customer
    Given I am authenticated with email "user@differenzia.com" and password "password"
    When I go to the customer ("user@differenzia.com") delivery page
    And I should see the delivery
    Then I follow "New Delivery"
    And I fill in "product_type" with "Blue bags"
    And I fill in "product_qt" with "2"
    And I fill in "delivery_note" with "Delivered 2 packages of green bags to mister X"
    And I press "Create Delivery"
    And I should see "Delivery created"