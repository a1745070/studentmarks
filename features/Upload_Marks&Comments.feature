Feature: Upload Marks with Comments
As a Lecturer/Course Coordinator,
So that I could give a brief comment on their individual assessment performance,
I want to fill in a text box while submitting their grade.
After this the student can view their grade and my message


Scenario: Lecturer Uploads Marks with Comments (happy case)
  Given I am on the admin page
  When I click "upload marks"
  And  I add "60" into "mark"
  And  I add "ok" into "comments"
  And  I click "submit"
  Then I should see "60" in "mark"
  And I should see "ok" in "comments"

Scenario: Lecturer Uploads Marks with Comments & mark below 0 (sad case 1)
  Given I am on the admin page
  When I click "upload marks"
  And  I add "-1" into "mark"
  And  I add "fail" into "comments"
  And  I click "submit"
  Then I should not see "(-1)" in "mark"
  And I should see "0" in "mark"
  And I should see "fail" in "comments"

Scenario: Lecturer Uploads Marks with Comments & mark above 100 (sad case 2)
  Given I am on the admin page
  When I click "upload marks"
  And  I add "101" into "mark"
  And  I add "good work" into "comments"
  And  I click "submit"
  Then I should not see "101" in "mark"
  And I should see "100" in "mark"
  And I should see "good work" in "comments"