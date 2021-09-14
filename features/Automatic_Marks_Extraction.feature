Feature: Automatic Marks Extraction
  As a Lecturer/Course Coordinator,
  So that I can view all of the collated student marks
  I want to download the collated marks object as a csv file
  After this I will be able to view all of the extracted student marks

Background: users in database
  Given the following users exist:
    | studentid | name  | coursename | assignmentname | mark | grade  |
    | a1781637	| peter	| ["ESAASI"] | assignment2    | 85   | HD     |

  Scenario: Lecturer downloads collated marks
    When I click "Export all marks as CSV"
    Then The system should compile all "mark" from database into "Collated Marks csv"
    And I should get a download with the filename "Collated Marks csv"
