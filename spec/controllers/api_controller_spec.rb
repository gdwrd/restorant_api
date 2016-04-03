require_relative '../spec_helper'

RSpec.describe ApiController do
  describe 'GET /api/' do
    it 'status should be 200' do
      get '/api/'
      expect(last_response.status).to eq(200)
    end
  end
end