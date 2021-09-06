Given(/^I am on the login page$/) do
  visit root_path
end

Then(/^I am on the student assignment page$/) do
  visit assignment_student_path
end