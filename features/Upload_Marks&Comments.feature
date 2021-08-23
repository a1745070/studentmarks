Feature: Upload Marks with Comments
  As a Lecturer/Course Coordinator,
  So that I could give a brief comment on their individual assessment performance,
  I want to fill in a text box while submitting their grade.
  After this the student can view their grade and my message.

  Scenario: Lecturer Uploads Marks with Comments
    Given I have students with studentids and courseids
    When I go to assignment marks
    Then I should be able to add a Mark
    And I should be able to add a Comment
