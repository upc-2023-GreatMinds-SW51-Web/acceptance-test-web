Feature: CRUD of Resources for Crops

  As a developer working on the Ayni application,
  I want to register, retrieve, update, and/or delete crops through an API
  So that they can be displayed in the application

  Background: Given the endpoint "http://localhost:{port}/api/v1/crops"
  @crop-adding
  Scenario: Successful registration of a crop
    Given I have access to the crops registration API
    When I send a request with valid data to register a crop
    Then the crop is successfully registered
  @crop-adding-with-wrong-data
  Scenario: Rejection of request with invalid data
    Given I have access to the crops registration API
    When I send a request with invalid data
    Then the request is rejected with an error message


