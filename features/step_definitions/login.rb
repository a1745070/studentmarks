Given(/^I am on the login page$/) do
  visit root_path
end

Then(/^I am on the student assignment page$/) do
  visit assignment_student_path
end

Given(/^the following users exist:$/) do |table|
  # table is a table.hashes.keys # => [:studentid, :password]
  table.hashes.each do |user|
    User.create!(user)
  end
end