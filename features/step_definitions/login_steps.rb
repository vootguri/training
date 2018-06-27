
#require_relative '../../pages/login_page'

Given(/^I visit to succeed login page$/) do
  @loginpage = Login.new
  visit @loginpage
end

And(/^Enter username in username field$/) do
@loginpage.username.set ENV["username"]
end

And(/^Enter district account$/) do
@loginpage.account.set ENV["account"]
end

And(/^Enter password in password field$/) do
@loginpage.password.set ENV["password"]
end

And(/^Click on login button$/) do
@loginpage.sign_in_button.click
end

Then(/^Login successfully$/) do

end

