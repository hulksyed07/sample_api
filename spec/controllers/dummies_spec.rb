require 'rails_helper'

RSpec.describe DummiesController, type: :controller do
  render_views

  describe "GET #index" do
    it "returns http success and the correct JSON response" do
      get :index
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)).to eq({ "dummies" => [1, 2, 3] })
    end
  end
end