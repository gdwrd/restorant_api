ENV['RACK_ENV'] = 'test'

require 'factory_girl'

require_relative 'support/factory_girl'
require_relative File.join('..', 'app')

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    RestorantApi
  end
end