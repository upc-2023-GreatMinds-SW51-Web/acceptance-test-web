Feature: CRUD of Cost Resources

  As a developer working on the Ayni application,
  I want to register, retrieve, update, and/or delete user cost information through an API
  to display it in the application.

  Background: Given the endpoint "http://localhost:{port}/api/v1/costs"

  @cost-getting
  Scenario: Retrieve information of costs for an existing user
    Given that I have access to the API for retrieving cost information by users
    When I request the information of costs made by a user
    Then I receive the user's cost information.
  @cost-non-existent
  Scenario: Retrieve information of costs for a non-4rf user
    Given that I have access to the API for retrieving cost information by users
    When I request non-existing information of costs made by a user
    Then I receive a message indicating that there are no records of users making cost entries.

