# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

student_list = [
  ["a1781637","ESAASII","HD","95"],
  ["a1783331","ESAASII","D","70"],
  ["a1773884","ESAASII","P","51"],
  ["a1884223","ESAASII","F","40"],
  ["a1772883","ESAASII","C","65"],
  ["a1882993","ESAASII","D","75"],
  ["a1223332","ESAASII","HD","100"]
]

assignment_list = [
  ["a1223332","ESAASII","001","assignment1","agile","P",50,"ok effort"],
  ["a1882993","ESAASII","002","assignment2","waterfall","P",55,"try better next year"]
]

user_list = [
  ["peter","a1781637","qwerty55","a1781637@student.adelaide.edu.au","0"],
  ["bobby","a1783331","bentley","a1783331@student.adelaide.edu.au","0"],
  ["ian","a1773884","poggers","a1773884@student.adelaide.edu.au","0"],
  ["aniza","a1884223","itsjustamood","a1884223@student.adelaide.edu.au","0"],
  ["chris","a1772883","solocarry","a1772883@student.adelaide.edu.au","0"],
  ["archie","a1882993","iloveui","a1882993@student.adelaide.edu.au","0"],
  ["justin","a1223332","spiritcannon500","a1223332@student.adelaide.edu.au","0"]
]

courses_list = ["ESAASII","Engineering software as an additional service","a course"]

user_list.each do |name, studentid, password, email, authorisationlvl|
  User.create(name: name, studentid: studentid, password: password, email: email, authorisationlvl: authorisationlvl)
end

student_list.each do |studentid, courseid, grade, mark|
  Mark.create(studentid: studentid, courseid: courseid, grade: grade, mark: mark)
end

assignment_list.each do |studentid, courseid, assignmentid, assignmentname, assignmentdescr, grade, mark, comments|
  Assignment.create(studentid: studentid, courseid: courseid, assignmentid: assignmentid, assignmentname: assignmentname, assignmentdescr: assignmentdescr, grade: grade, mark: mark, comments: comments)
end

