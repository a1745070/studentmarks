require 'rails_helper'

RSpec.describe "Modules", type: :request do
  describe "GET /modules" do
    it "returns http success" do
      get "/modules/modules"
      expect(response).to have_http_status(:success)
    end
  end

end
