Feature: CRUD of resources for users

  As a developer working on the Ayni application,
  I want to register, retrieve, update, and/or delete users through an API
  So that I can view the users affiliated with our application.

  Background: Given the endpoint "http://localhost:{port}/api/v1/users"
  @User-adding
  Scenario: Successful registration of a new user
    Given that I have access to the user registration API
    When I send a request to register a new user
    Then the user is successfully registered
  @User-adding-with-wrong-data
  Scenario: Rejection of request with invalid data
    Given that I have access to the user registration API
    When I send a request with invalid data
    Then the request is rejected
