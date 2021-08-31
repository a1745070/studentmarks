require 'rails_helper'

RSpec.describe "Lectures", type: :request do
  describe "GET /lectures" do
    it "returns http success" do
      get "/lectures/lectures"
      expect(response).to have_http_status(:success)
    end
  end

end
