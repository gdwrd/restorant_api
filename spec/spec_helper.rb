ENV['RACK_ENV'] = 'test'

require 'simplecov'
SimpleCov.start

require 'factory_girl'

require_relative 'support/factory_girl'
Dir.glob('./app/{controllers}/*.rb').each { |file| require file }

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    ApiController
    RestorantsController
  end
end