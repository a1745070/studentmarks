Feature: So that only course coordinators (approved users) can edit marks
As an admin
I want to implement a login system where I am able to give login credentials to the approved users
This will make sure only approved users can edit marks

Background: users in database
  Given the following users exist:
    | studentid  | password  |
    | a1223332   | admin     |
    | a1781637   | qwerty55  |

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

Scenario: Course coordinator logs out (happy case 3)
  Given I am on the admin assignment page
  And  I click "LOGOUT"
  Then I am on the login page

Scenario: Student logs out (happy case 4)
  Given I am on the student assignment page
  And  I click "LOGOUT"
  Then I am on the login page

Scenario: No studentid or password added (sad case 1)
  Given I am on the login page
  When  I add "" into "Studentid"
  And  I add "" into "Password"
  And  I click "LOGIN"
  Then I am on the login page