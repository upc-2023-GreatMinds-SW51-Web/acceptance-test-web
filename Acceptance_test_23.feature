Feature: Retrieval of Crops by User ID

  As a developer, I want to retrieve crops for a specific user through an API so that users can interact with the application efficiently.

  Background:
    Given an endpoint "http://localhost:{port}/api/v1/users/{userId}/crops" is available

  @Crops-by-userId-get
  Scenario: User wants to view their crops

    Given a user has entered their credentials and an ID was automatically generated correctly
    When they make a request to retrieve the crops
    Then the response is provided with a status of 200
    And the crops related to the specific user will be displayed

    Examples:
      | credentials   | user_id | has_crops |
      | user1, pass1  | 123     | true      |
      | user2, pass2  | 456     | true      |
      | user3, pass3  | 789     | true      |
  @Empty-crops-by-userId-get
  Scenario: User wants to view their crops but none exist

    Given a user has entered their credentials and an ID was automatically generated correctly
    When they make a request to retrieve the crops
    Then the response is provided with a status of 200 but no crops will be displayed

    Examples:
      | credentials   | user_id | has_crops |
      | user4, pass4  | 101     | false     |
      | user5, pass5  | 202     | false     |
      | user6, pass6  | 303     | false     |
