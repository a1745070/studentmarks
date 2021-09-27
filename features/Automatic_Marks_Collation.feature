Feature: Automatic Marks Collation
  As a Lecturer/Course Coordinator,
  So that I can automatically gather required marks from a specific exam or a student without manual collation,
  I want to access a database that allows me to instantly collate marks through queries.
  After this I will have gathered the students marks as an object.

Background: users in database
  Given the following users exist:
    | studentid | name  | coursename | assignmentname | mark | grade  |
    | a1781637	| peter	| ["ESAASI"] | assignment2    | 85   | HD     |

  Scenario: Lecturer gets marks
    When I click "Export all marks as CSV"
    Then The system should compile "85" from database into "Collated Marks csv"


