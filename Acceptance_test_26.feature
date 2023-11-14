Feature: Security and Password Encryption at Login

  As a developer, I want the user's password provided during registration to be encrypted, to establish a security standard and prevent vulnerabilities in the application.

  Background:
    Given an endpoint "http://localhost:{port}/api/v1/users/sign-up"
  @user-adding
  Scenario: Successful User Creation
    Given a user is at the endpoint
    When they enter data in "username", "email", and "password"
    Then the system should display a response with code 200 and a message of "Registration successfully"
    And the password should be stored in the database encrypted

    Examples:
      | username | email                | password      |
      | user1    | user1@example.com    | pass123        |
      | user2    | user2@example.com    | securePassword |
      | user3    | user3@example.com    | secretPass123  |

  Background:
    Given an endpoint "http://localhost:{port}/api/v1/users/sign-in"
  @user-sing-in
  Scenario: Successful Login
    Given a user is at the endpoint
    When they enter valid and existing data in "username", "email", and "password"
    Then the system should display a response with code 200 and a message of "Login successful"

    Examples:
      | username | email                | password      |
      | user1    | user1@example.com    | pass123        |
      | user2    | user2@example.com    | securePassword |
      | user3    | user3@example.com    | secretPass123  |

