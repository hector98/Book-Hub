require "rails_helper"

RSpec.describe HomeController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders the #index view" do
      get :index
      expect(response).to render_template :index
    end

    it "show all posts" do
      get :index
      expect(assigns(:posts)).to eq(Post.all)
    end
  end
end
