# frozen_string_literal: true

require 'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'site_prism'
require 'date'
require 'yaml'
require_relative '../../spec_helper'

# Configuration container class
# Takes values from ENV first and data/config.yml second
class Config

end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 60
  config.default_selector = :css
  config.save_path = 'tmp'
  config. app_host = "https://tf-succeed-56-qa.mango.naviance.com"

end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser_settings)
end

def browser_settings
  settings = { browser: :chrome,
               args: ['--use-fake-ui-for-media-stream'] }
  #settings[:args] += %w[headless disable-gpu]
  settings
end

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

Before do |scenario|
  Capybara.page.driver.browser.manage.window.resize_to(1400, 1000)
end


# Set the screenshot saver
Capybara::Screenshot.prune_strategy = :keep_last_run
Capybara::Screenshot.register_filename_prefix_formatter(:cucumber) do |example|
  "screenshot_#{example.name}"
end
