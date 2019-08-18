Feature: To test faskes feature

Background: Staff go to overtime requests page
	Given user is on login page  
  When user login with 'user' data
  Then user should be redirected to home page

Scenario: search without result
   Given user is on faskes menu
   When user search 'bidan' in 'jakarta'
   Then user should not get any result

Scenario: choose faskes via dropdown after typing
   Given user is on faskes menu
   When user search 'polri' in 'jakarta'
   And user choose faskes
   Then user should on faskes detail page
