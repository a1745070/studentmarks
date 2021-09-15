Then(/^The system should compile all "([^"]*)" from database into "([^"]*)"$/) do |arg1, arg2|
  pending
  # table is a table.hashes.keys # => [:studentid, :password]
  table.hashes.each do |user|
    User.create!(user)
  end
end