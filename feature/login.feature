Feature: Login functionality on "the-internet" website

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I login with username "tomsmith" and password "SuperSecretPassword!"
    Then I should see the message "You logged into a secure area!"
  Scenario: Unsuccessful login with invalid username
    Given I am on the login page
    When I login with username "invalidUser" and password "SuperSecretPassword!"
    Then I should see the message "Your username is invalid!"

  Scenario: Unsuccessful login with invalid password
    Given I am on the login page
    When I login with username "tomsmith" and password "wrongPassword!"
    Then I should see the message "Your password is invalid!"

  Scenario: Unsuccessful login with invalid username and password
    Given I am on the login page
    When I login with username "invalidUser" and password "wrongPassword!"
    Then I should see the message "Your username is invalid!"

 Scenario: Unsuccessful login with invalid username
    Given I am on the login page
    When I login with username "invalidUser" and password "SuperSecretPassword!"
    Then I should see the message "Your username is invalid!"

  Scenario: Unsuccessful login with invalid password
    Given I am on the login page
    When I login with username "tomsmith" and password "wrongPassword!"
    Then I should see the message "Your password is invalid!"

  Scenario: Unsuccessful login with invalid username and password
    Given I am on the login page
    When I login with username "invalidUser" and password "wrongPassword!"
    Then I should see the message "Your username is invalid!"

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I login with username "tomsmith" and password "SuperSecretPassword!"
    Then I should see the message "You logged into a secure area!"