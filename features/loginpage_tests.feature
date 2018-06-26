@succeed
Feature: dashboard 1 login from succeed

  Scenario: Login to succeed
    Given I visit to succeed login page
    And Enter username in username field
    And Enter district account
    And Enter password in password field
    And Click on login button
    Then Login successfully



