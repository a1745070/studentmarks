Then(/^The system should compile "([^"]*)" from database into "([^"]*)"$/) do |arg1, arg2|
  expect(arg2).to have_content(arg1)
end