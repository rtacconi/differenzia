Feature: Product delivery

  Background:
    Given I have one user with email "user@differenzia.com" role "user" and password "password"
    And I have "Green bags" as product
    And I have "Blue bags" as product
    And I have a customer with "Blue bags" as product already delivered
    
  Scenario: Find deliveries of a customer
    Given I am authenticated with email "user@differenzia.com" and password "password"
    When I go to the customer delivery page
    Then I select "Blue bags" from "delivery_product_id"
    And I fill in "delivery_quantity" with "2"
    And I fill in "delivery_notes" with "Delivered 2 packages of green bags to mister X"
    And I press "Create Delivery"
    And I should see "Blue bags"