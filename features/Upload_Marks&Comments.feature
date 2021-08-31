Feature: Upload Marks with Comments
As a Lecturer/Course Coordinator,
So that I could give a brief comment on their individual assessment performance,
I want to fill in a text box while submitting their grade.
After this the student can view their grade and my message


Scenario: Lecturer Uploads Marks with Comments (v2)
  Given I am on the admin page
  When I click "upload marks"
  And  I add "60" into "mark"
  And  I add "ok" into "comments"
  And  I click "submit"
  Then I should see "60" in "mark"
  And I should see "ok" in "comments"