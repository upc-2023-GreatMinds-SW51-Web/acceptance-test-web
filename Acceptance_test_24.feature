Feature: Order Retrieval by User ID

  As a developer, I want to retrieve information about orders for a specific user through an API, so that it can be available in the application.

  Background:
    Given an endpoint "http://localhost:{port}/api/v1/users/{userId}/orders" is available
  @orders-by-userId-get
  Scenario: User wants to view their existing orders
    Given that a user has entered their credentials, and an ID has been automatically created correctly
    When they make a request to retrieve the orders
    Then the response is provided with status 200
    And the orders related to the specific user will be displayed
  @empty-orders-by-userId-get
  Scenario: User wants to view their orders but none exist
    Given that a user has entered their credentials, and an ID has been automatically created correctly
    When they make a request to retrieve orders
    Then the response is provided with status 200
    And no orders will be displayed since none exist

