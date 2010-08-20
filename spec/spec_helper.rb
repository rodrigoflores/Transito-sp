require File.join(File.dirname(__FILE__), '..', 'application.rb')

require 'spec'
require 'rack/test'

Spec::Runner.configure do |config|
  config.include Rack::Test::Methods
end

def app
  Sinatra::Application
end