Feature: Login functionality on "the-internet" website

  Scenario: Successful login with valid credentials
    Given I am on the login page
    When I login with username "tomsmith" and password "SuperSecretPassword!"
    Then I should see the message "You logged into a secure area!"
