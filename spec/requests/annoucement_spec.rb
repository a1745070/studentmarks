require 'rails_helper'

RSpec.describe "Annoucements", type: :request do
  describe "GET /hello" do
    it "returns http success" do
      get "/annoucement/hello"
      expect(response).to have_http_status(:success)
    end
  end

end
