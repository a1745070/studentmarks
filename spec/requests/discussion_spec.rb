require 'rails_helper'

RSpec.describe "Discussions", type: :request do
  describe "GET /discussion" do
    it "returns http success" do
      get "/discussion/discussion"
      expect(response).to have_http_status(:success)
    end
  end

end
