require 'rails_helper'

RSpec.describe "Dummies", type: :request do
  describe "GET /dummies" do
    it "returns http success" do
      get "/dummies"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)).to eq({ "dummies" => [1, 2, 3] })
    end
  end
end
