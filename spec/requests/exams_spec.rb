require 'rails_helper'

RSpec.describe "Exams", type: :request do
  describe "GET /exams" do
    it "returns http success" do
      get "/exams/exams"
      expect(response).to have_http_status(:success)
    end
  end

end
