require 'rails_helper'

RSpec.describe "People", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/people/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/people/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/people/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/people/show"
      expect(response).to have_http_status(:success)
    end
  end

end
