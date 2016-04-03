require_relative '../../app/controllers/atmosferes_controller'

RSpec.describe AtmosferesController do

  describe 'GET /api/atmosfere' do
    before { get '/' }

    it 'status should be 200' do
      expect(last_response.status).to eq(200)
    end

    it 'body should include atmosferes' do
      body = JSON.parse(last_response.body)
      expect(body.has_key? 'atmosferes').to eq(true)
      expect(body['status']).to eq('success')
    end
  end
end