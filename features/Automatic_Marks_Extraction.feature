Feature: Automatic Marks Extraction
  As a Lecturer/Course Coordinator,
  So that I can view all of the collated student marks
  I want to download the collated marks object as a csv file
  After this I will be able to view all of the extracted student marks

  Scenario: Lecturer wants collated marks
    Given I have a "Collated Marks csv"
    When I want to download the "csv"
    Then the system should be able to allow me to download it
