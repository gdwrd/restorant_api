require_relative '../spec_helper'

describe "Restorant Routes" do

  describe "GET /" do
    it "status should be 200" do
      get '/'
      expect(last_response.status).to eq 200
    end
  end
end