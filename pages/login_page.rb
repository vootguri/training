# frozen_string_literal: true

require 'site_prism/page'
#require 'site_prism/page/capybara'

# POM for the Succeed login page
class Login < SitePrism::Page
  set_url '/auth/signin'

  element :account, :xpath, "//*[@name='hsid']"
  element :username, :xpath, "//*[@name='username']"
  element :password, :xpath, "//*[@name='password']"
  element :sign_in_button, :xpath, "//*[@name='Submit']"
end

