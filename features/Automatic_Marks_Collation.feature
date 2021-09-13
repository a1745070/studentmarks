Feature: Automatic Marks Collation
  As a Lecturer/Course Coordinator,
  So that I can automatically gather required marks from a specific exam or a student without manual collation,
  I want to access a database that allows me to instantly collate marks through queries.
  After this I will have gathered the students marks as an object.

Background: users in database
  Given the following users exist:
    | studentid  | mark  |
    | a1781637   |       |

  Scenario: Lecturer gets marks
    When I request "mark" for students
    Then the system should compile all "mark" into "Collated Marks csv"


