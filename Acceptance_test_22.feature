Feature: Retrieval of Costs by User ID

  As a developer, I want to implement the ability to retrieve costs by user ID through an API to make it available in the application.

  Background:
    Given an endpoint "http://localhost:%d/api/v1/users/{userId}/costs" is available
  @costs-by-userId-getting
  Scenario: User wants to view their costs
    Given a user has entered their credentials, and an ID has been automatically generated correctly
    When they make a request to retrieve costs
    Then the response is provided with status 200
    And the costs related to the specific user will be displayed

    Examples:
      | userId |
      | 123    |
      | 456    |
      | 789    |
      
  @no-costs-by-userId-getting-
  Scenario: User wants to view their costs but none exist
    Given a user has entered their credentials, and an ID has been automatically generated correctly
    When they make a request to retrieve costs
    Then the response is provided with status 200, but no costs will be displayed

    Examples:
      | userId |
      | 101    |
      | 202    |
      | 303    |

