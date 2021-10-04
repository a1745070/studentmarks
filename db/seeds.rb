# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

user_list = [
  ["Peter Trinh","a1781637","qwerty55","a1781637@student.adelaide.edu.au","Student"],
  ["Bobby Yan","a1744633","bentley","a1744633@student.adelaide.edu.au","Student"],
  ["Ian Chong","a1773884","poggers","a1773884@student.adelaide.edu.au","Student"],
  ["Aniza Halim","a1884223","itsjustamood","a1884223@student.adelaide.edu.au","Student"],
  ["Christopher Ho","a1772883","solocarry","a1772883@student.adelaide.edu.au","Student"],
  ["Archie Verma","a1882993","iloveui","a1882993@student.adelaide.edu.au","Student"],
  ["Aufeef Chauhan","a1234567","admin","a1234567@adelaide.edu.au","Course Coordinator"]
]

user_list.each do |name, studentid, password, email, role|
  user = User.new(name: name, studentid: studentid, password: password, email: email)
  user.save
  Role.create(user: user, role: role)
end


 course_list = [
   ["ESAASI","Engineering software as a service I"],
   ["ESAASII","Engineering software as a service II"]
 ]

course_list.each do |coursename, coursedesc|
   Course.create(coursename: coursename, coursedesc: coursedesc)
 end


User.all.each do |user|
  Enrolment.create(course: Course.first, user: user)
end


assignment_list = [
  ["Assignment 1" , "Rotten Potatoes" , 25],
  ["Assignment 2" , "Student MArks System" , 25],
  ["Final Exam" , "Final Exam" , 50]
]

assignment_list.each do |assignmentname, assignmentdesc, weight|
  Assignment.create(course: Course.first, assignmentname: assignmentname, assignmentdesc: assignmentdesc, weight: weight)
end


User.all.each do |user|
  Assignment.all.each do |assignment|
  Task.create(user: user, assignment: assignment)
  end
end

mark_list = [
  [1,"HD",85,"Good", "Assignment"],
  [2,"HD",85,"Good", "Assignment"],
  [3,"HD",85,"Good", "Assignment"],
  [4,"HD",85,"Good", "Assignment"],
  [5,"HD",85,"Good", "Assignment"],
  [6,"HD",85,"Good", "Assignment"],
  [7,"HD",85,"Good", "Assignment"],
  [8,"HD",85,"Good", "Assignment"],
  [9,"HD",85,"Good", "Assignment"],
  [10,"HD",85,"Good", "Assignment"],
  [11,"HD",85,"Good", "Assignment"],
  [12,"HD",85,"Good", "Assignment"],
  [13,"D",77,"Good", "Exam"]
]

mark_list.each do |task_id, grade, mark, comment, asstype|
  Mark.create(task: Task.all[task_id], grade: grade, mark: mark, comment: comment, asstype: asstype)
end