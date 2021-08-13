# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

student_list = [
  [ "a1781637","ESASII","HD","95" ]

]

assignment_list = [
  [  ]

]

student_list.each do |studentid, courseid, grade, mark|
  StudentMark.create(studentid: studentid, courseid: courseid, grade: grade, mark: mark)
end

assignment_list.each do |studentid, courseid, grade, mark|
  Assignment.create(studentid: studentid, courseid: courseid, grade: grade, mark: mark)
end
