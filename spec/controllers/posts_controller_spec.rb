require "rails_helper"

RSpec.describe PostsController, type: :controller do
  let(:user) { User.create(email: "test@text.com", password: "root123", password_confirmation: "root123") }

  before do
    sign_in user
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
end
