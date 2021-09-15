

Feature: Retrieving student marks database 
As a course coordinator.
So that I can access the marks of all students in my course.
I Want to be able to receive the database of all course students marks.
After This I will be able to easily access the course student marks database.

Scenario: Lecturer gets marks
  When I request "mark" for students
  Then the system should provide the database of all course students marks 

