require 'capybara'
require 'capybara/rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :custom do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.native_events = true
  Capybara::Selenium::Driver.new(app, :browser => :firefox, profile: profile)
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :custom
  config.app_host = 'https://www.google.com' # change url
end
#comment for commit
#another comment :D
