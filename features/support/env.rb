# Generated by cucumber-sinatra. (2013-12-13 15:28:05 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'pusher_testing.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = PusherTesting

class PusherTestingWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  PusherTestingWorld.new
end
