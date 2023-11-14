Feature: Retrieval of Profits by User ID

  As a developer, I want to retrieve agricultural profits for a specific user through an API so that it can be available in the application.

  Background:
    Given an endpoint "http://localhost:{port}/api/v1/users/{userId}/profits" is available
  @profits-by-userId-get
  Scenario: User wants to view their profits
    Given that a user has entered their credentials and an ID was automatically created correctly
    When they make a request to retrieve profits
    Then the response is provided with status 200
    And the profits related to the specific user will be displayed

  @empty-profits-by-userId-get
  Scenario: User wants to view profits but none exist
    Given that a user has entered their credentials and an ID was automatically created correctly
    When they make a request to retrieve profits
    Then the response is provided with status 200, but no profits will be displayed as they do not exist

