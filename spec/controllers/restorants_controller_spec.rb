require_relative '../spec_helper'

RSpec.describe RestorantsController do

  describe 'GET /api/restorants/near with invalid params' do
    before { get '/near' }

    it 'status should be 404' do
      expect(last_response.status).to eq 404
    end

    it 'body should have error' do
      body = JSON.parse(last_response.body)
      expect(body.has_key?('error')).to eq(true)
      expect(body['status']).to eq('error')
      expect(body['error']).to eq('Wrong parameters')
    end
  end

  describe 'GET /api/restorant/near with valid params' do
    before { get '/near?longitude=100&latitude=50' }

    it 'status should be 200' do
      expect(last_response.status).to eq(200)
    end

    it 'body should include restorants' do
      body = JSON.parse(last_response.body)
      expect(body.has_key?('restorants')).to eq(true)
      expect(body['restorants'].size).to eq(7)
      expect(body['status']).to eq('success')
    end
  end

  describe 'GET /api/restorant/near_by with invalid params' do
    before { get '/near_by?longitude=100&latitude=50' }

    it 'status should be 404' do
      expect(last_response.status).to eq(404)
    end

    it 'body should have error' do
      body = JSON.parse(last_response.body)
      expect(body.has_key?('error')).to eq(true)
      expect(body['error']).to eq('Wrong parameters')
      expect(body['status']).to eq('error')
    end
  end

  describe 'GET /api/restorants/near_by with valid params' do
    before { get '/near_by?atmosfere_ids={1,2}&longitude=100&latitude=50' }

    it 'status should be 200' do
      expect(last_response.status).to eq(200)
    end

    it 'body should include restorants' do
      body = JSON.parse(last_response.body)
      expect(body.has_key?('restorants')).to eq(true)
      body['restorants'].map do |r|
        [1,2].map {|i| expect(r['atmosfere_ids'].include? i) }
      end
    end
  end
end