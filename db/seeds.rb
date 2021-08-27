# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

user_list = [
  ["peter","a1781637","qwerty55","a1781637@student.adelaide.edu.au"],
  ["bobby","a1783331","bentley","a1783331@student.adelaide.edu.au"],
  ["ian","a1773884","poggers","a1773884@student.adelaide.edu.au"],
  ["aniza","a1884223","itsjustamood","a1884223@student.adelaide.edu.au"],
  ["chris","a1772883","solocarry","a1772883@student.adelaide.edu.au"],
  ["archie","a1882993","iloveui","a1882993@student.adelaide.edu.au"],
  ["aufeef","a1223332","admin","a1223332@adelaide.edu.au"]
]

user_list.each do |name, studentid, password, email|
  User.create(name: name, studentid: studentid, password: password, email: email)
end

role_list = [
  [1,"Student"],
  [2,"Student"],
  [3,"Student"],
  [4,"Student"],
  [5,"Student"],
  [6,"Student"],
  [7,"Course Coordinator"]
]

role_list.each do |user_id, role|
  Role.create(user_id: user_id, role: role)
end

 course_list = [
   ["ESAASI","Engineering software as a service is great"],
   ["ESAASII","Engineering software as a service is great"]
 ]

course_list.each do |coursename, coursedesc|
   Course.create(coursename: coursename, coursedesc: coursedesc)
 end


enrolment_list = [
  [1,1],
  [1,2],
  [1,3],
  [1,4],
  [1,5],
  [1,6],
  [1,7]
]

enrolment_list.each do |course_id, user_id|
  Enrolment.create(course_id: course_id, user_id: user_id)
end


assignment_list = [
  [1 , "assignment1" , "this is assignment 1" , 50],
  [1 , "assignment2" , "this is assignment 2" , 50]
]

assignment_list.each do |course_id, assignmentname, assignmentdesc, weight|
  Assignment.create(course_id: course_id, assignmentname: assignmentname, assignmentdesc: assignmentdesc, weight: weight)
end

task_list = [
  [1,1],
  [1,2],
  [2,1],
  [2,2],
  [3,1],
  [3,2],
  [4,1],
  [4,2],
  [5,1],
  [5,2],
  [6,1],
  [6,2]
]

task_list.each do |user_id, assignment_id|
  Task.create(user_id: user_id, assignment_id: assignment_id)
end

mark_list = [
  [1,"HD",85,"Good"],
  [2,"HD",85,"Good"],
  [3,"HD",85,"Good"],
  [4,"HD",85,"Good"],
  [5,"HD",85,"Good"],
  [6,"HD",85,"Good"],
  [7,"HD",85,"Good"],
  [8,"HD",85,"Good"],
  [9,"HD",85,"Good"],
  [10,"HD",85,"Good"],
  [11,"HD",85,"Good"],
  [12,"HD",85,"Good"]
]

mark_list.each do |task_id, grade, mark, comment|
  Mark.create(task_id: task_id, grade: grade, mark: mark, comment: comment)
end