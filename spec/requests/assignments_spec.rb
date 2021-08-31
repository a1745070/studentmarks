require 'rails_helper'

RSpec.describe "Assignments", type: :request do
  describe "GET /assignments" do
    it "returns http success" do
      get "/assignments/assignments"
      expect(response).to have_http_status(:success)
    end
  end

end
