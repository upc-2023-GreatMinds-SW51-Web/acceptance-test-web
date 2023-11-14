Feature: CRUD of resources for orders

  As a developer working on the Ayni application,
  I want to register, retrieve, update, and/or delete user orders information through an API
  to display it in the application.


  Background: Given the endpoint "http://localhost:{port}/api/v1/orders"


  Scenario: User retrieves their orders

    Given the user is authenticated in the Ayni application.
    When the user sends a GET request to retrieve their orders.
    Then the application should return a list of orders associated with the user.

  Scenario: User updates an existing order

    Given the user is authenticated in the Ayni application.
    And the user has at least one registered order.
    When the user sends a PUT request to update an existing order.
    Then the application should process the request and update the information of the specified order.

