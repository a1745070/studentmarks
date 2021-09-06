Given(/^I am on the admin page$/) do
  visit root_path
end

And(/^I add "([^"]*)" into "([^"]*)"$/) do |arg1, arg2|
  fill_in arg2, with: arg1
end

And(/^I click "([^"]*)"$/) do |arg|
  click_link_or_button arg
end

Then(/^I should see "([^"]*)" in "([^"]*)"$/) do |arg1, arg2|
  expect(arg2).to have_content(arg1)
end

Then(/^I should not see "([^"]*)" in "([^"]*)"$/) do |arg1, arg2|
  expect(arg2).not_to have_content(arg1)
end

And(/^I should see "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end