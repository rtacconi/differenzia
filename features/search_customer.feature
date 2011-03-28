Feature: Customer search

  @wip
  Scenario: search for a customer
    Given I am an authenticated user
    When I go to the root page
    And I fill in "customer_search" with "mauro"
