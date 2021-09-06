Feature: Upload Marks with Comments
As a Lecturer/Course Coordinator,
So that I could give a brief comment on their individual assessment performance,
I want to fill in a text box while submitting their grade.
After this the student can view their grade and my message


Scenario: Lecturer uploads marks with comments (happy case 1)
  Given I am on the admin page
  When I click "upload marks"
  And  I add "60" into "mark"
  And  I add "ok" into "comments"
  And  I click "submit"
  Then I should see "60" in "mark"
  And I should see "ok" in "comments"

Scenario: Lecturer doesn't upload any mark or comment (sad case 1)
  Given I am on the admin assignment page
  When I click "upload marks"
  And  I add "" into "mark"
  And  I add "" into "comments"
  And  I click "submit"
  Then I should see "0" in "mark"
  And I should see "" in "comments"

Scenario: Lecturer uploads mark below 0 with comments (sad case 2)
  Given I am on the admin assignment page
  When I click "upload marks"
  And  I add "-1" into "mark"
  And  I add "fail" into "comments"
  And  I click "submit"
  Then I should not see "(-1)" in "mark"
  And I should see "mark should be >= 0"
  And I should see "0" in "mark"
  And I should see "fail" in "comments"

Scenario: Lecturer uploads mark above 100 with comments (sad case 3)
  Given I am on the admin assignment page
  When I click "upload marks"
  And  I add "101" into "mark"
  And  I add "good work" into "comments"
  And  I click "submit"
  Then I should not see "101" in "mark"
  And I should see "mark should be =< 100"
  And I should see "100" in "mark"
  And I should see "good work" in "comments"

Scenario: Lecturer uploads mark with comments that have too many characters (max 100 char) (sad case 4)
  Given I am on the admin assignment page
  When I click "upload marks"
  And  I add "100" into "mark"
  And  I add "good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work " into "comments"
  And  I click "submit"
  Then I should see "100" in "mark"
  And I should see "too many characters (max 100)"
  And I should not see "good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work good work " in "comments"
  And I should see "good work good work good work good work good work good work good work good work good work good work " in "comments"

Scenario: Lecturer uploads invalid mark with comments (sad case 5)
  Given I am on the admin assignment page
  When I click "upload marks"
  And  I add "absf" into "mark"
  And  I add "good work" into "comments"
  And  I click "submit"
  Then I should not see "absf" in "mark"
  And I should see "invalid mark input"
  And I should see "0" in "mark"
  And I should see "good work" in "comments"