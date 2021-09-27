Then(/^I should get a download with the filename "([^"]*)"$/) do |arg|
  page.response_headers['Content-Disposition'].should include("filename=\"#{arg}\"")
end