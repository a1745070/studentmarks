Feature: Automatic Marks Collation
  As a Lecturer/Course Coordinator,
  So that I can automatically gather required marks from a specific exam or a student without manual collation,
  I want to access a database that allows me to instantly collate marks through queries.
  After this I will have gathered the students marks as an object.


  Scenario: Lecturer Wants Gathered Marks
    Given I have "Students"
    And I have "Mark"
    When I want to view all individual "Mark" together
    Then the system should be able to collect all "Mark" through queries
    And compile it into a csv file

