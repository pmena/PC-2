# Generated by cucumber-sinatra. (2012-07-26 19:17:41 -0500)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/App.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.default_driver = :selenium
Capybara.app = App

class MyAppWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  MyAppWorld.new
end
