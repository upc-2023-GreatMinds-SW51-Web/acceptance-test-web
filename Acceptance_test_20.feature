Feature: CRUD of Profits Resources

  As a developer working on the Ayni application,
  I want to register, retrieve, update, and/or delete user profit information through an API
  to display it in the application.


  Background: Given the endpoint "http://localhost:{port}/api/v1/profits"

  @profits-getting
  Scenario: Retrieve User Profits Information
    Given I have access to the API for retrieving user profit information
    When I request the information of profits made by a user
    Then I receive the information of the user's profits.
  @profits-getting-non-existing
  Scenario: Retrieve Non-Existing User Profits Information
    Given I have access to the API for retrieving user profit information
    When I request non-existing information of profits made by a user
    Then I receive a message indicating that there are no records of users making profit entries.
