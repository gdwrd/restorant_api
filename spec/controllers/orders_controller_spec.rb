require_relative '../spec_helper'

RSpec.describe OrdersController do
  describe 'POST /new with valid params' do
    before { post '/new', { name: 'test', phone: '123123123', restorant_id: 1, datetime: DateTime.now, quantity: 2 } }

    it 'status should be 200' do
      expect(last_response.status).to eq(200)
    end

    it 'body should included order' do
      body = JSON.parse(last_response.body)
      expect(body.has_key? 'order').to eq(true)
      expect(body['status']).to eq('success')
    end
  end

  describe 'POST /new with invalid params' do
    before { post '/new' }

    it 'status should be 404' do
      expect(last_response.status).to eq(404)
    end

    it 'body should include errors' do
      body = JSON.parse(last_response.body)
      expect(body.has_key? 'error').to eq(true)
      expect(body['status']).to eq('error')
    end
  end
end