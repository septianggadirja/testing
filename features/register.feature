Feature: To test register feature

Scenario: Failed to register with invalid credential
  Given user is on register page
  When user register with null data
  Then user should get error popup message
  When user register with dob data only
  Then user should get error message for lack of data
  When user register with invalid data
  Then user should get error message for invalid data
  When user register with registered email account
  Then user should get error popup message

Scenario: Failed register without personality_1
  Given user is on register page
  When user register without personality_1
  Then user should get error popup message

Scenario: Failed register with lack of personality_1 data
  Given user is on register page
  When user choose 'Rajin Olahraga' 'Rajin Bangun Pagi' 'Rapih' as personality_1
  Then user should get error popup message

Scenario: Failed register without personality_2
  Given user is on register page
  When user choose 'Rajin Olahraga' 'Rajin Bangun Pagi' 'Rapih' 'Aktif Bergerak' as personality_1
  And user register without personality_2
  Then user should get error popup message

Scenario: Failed register with lack of personality_2 data
  Given user is on register page
  When user choose 'Rajin Olahraga' 'Rajin Bangun Pagi' 'Rapih' 'Aktif Bergerak' as personality_1
  And user choose '#LatihanOtak' '#Sports' as personality_2
  Then user should get error popup message

Scenario: Succes to register account
  Given user is on register page
  When user choose 'Rajin Olahraga' 'Rajin Bangun Pagi' 'Rapih' 'Aktif Bergerak' as personality_1
  And user choose '#LatihanOtak' '#Sports' '#Insomnia' as personality_2
  Then user should success to register