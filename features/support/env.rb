require 'cucumber'
require 'capybara'
require 'rspec'

Capybara.register_driver :chrome do |web|
  Capybara::Selenium::Driver.new(web, :browser => :chrome)
end

Before do
	@bbc = Capybara::Session.new(:chrome)
end