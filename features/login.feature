Feature: Login/Logout
  As a user
  In order to access my account
  I would like to be able to login and out of my account

  Background:
    Given the following user exists
      | email                       | password |
      | jenny@ranom.com             | password |
      | daniel@random.com           | password |

  Scenario: A user provides valid credentials and can log in
    Given I visit the landing page
    When I click "Login" button
    Then I am on the login page
    And I enter "Email" as "jenny@ranom.com"
    And I enter "Password" as "password"
    And I click "Log in"
    Then I should be on the landing page

  Scenario: User leaves email field empty on login
    Given I am on the login page
    When I enter "Email" as ""
    And I enter "Password" as "password"
    And I click "Log in"
    Then I should see "Invalid Email or password."

  Scenario: User leaves password field empty on login
    Given I am on the login page
    When I enter "Email" as "daniel@random.com"
    And I enter "Password" as ""
    And I click "Log in"
    Then I should see "Invalid Email or password."

  Scenario: User leaves wrong password on login
    Given I am on the login page
    When I enter "Email" as "daniel@random.com"
    And I enter "Password" as "notpassword"
    And I click "Log in"
    Then I should see "Invalid Email or password."

  Scenario: User leaves wrong email on login
    Given I am on the login page
    When I enter "Email" as "wrongemail@random.com"
    And I enter "Password" as "notpassword"
    And I click "Log in"
    Then I should see "Invalid Email or password."

  Scenario: User logs out of account
    Given I am logged in as random user
    And I visit the landing page
    When I click "Logout" link
    Then I should be on the landing page
    And I should see "Signed out successfully."
