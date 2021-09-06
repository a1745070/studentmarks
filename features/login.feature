Feature: So that only course coordinators (approved users) can edit marks
As an admin
I want to implement a login system where I am able to give login credentials to the approved users
This will make sure only approved users can edit marks

Scenario: Course coordinator logs in (happy case 1)
  Given I am on the login page
  When  I add "a1223332" into "Studentid"
  And  I add "admin" into "Password"
  And  I click "LOGIN"
  Then I am on the admin assignment page

Scenario: Student logs in (happy case 2)
  Given I am on the login page
  When  I add "a1781637" into "Studentid"
  And  I add "qwerty55" into "Password"
  And  I click "LOGIN"
  Then I am on the student assignment page