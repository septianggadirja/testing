Feature: To test login

Scenario: Failed to login
  Given user is on login page
  When user login with null data
  Then user should still on login page
  When user login with invalid_email data
  Then user should still on login page
  When user login with invalid_password data
  Then user should still on login page

Scenario: Success login
  Given user is on login page
  When user login with 'user' data
  Then user should be redirected to home page