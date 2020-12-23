require 'rails_helper'

RSpec.describe "Trainees", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/trainees/new"
      expect(response).to have_http_status(:success)
    end
  end

end
