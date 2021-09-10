Feature: Automatic Marks Extraction
  As a Lecturer/Course Coordinator,
  So that I can view all of the collated student marks
  I want to download the collated marks object as a csv file
  After this I will be able to view all of the extracted student marks

  Scenario: Lecturer wants collated marks
    Given I have "Collated Marks csv"
    When I download "Collated Marks csv"
    Then I should see "Collated Marks csv" being downloaded
