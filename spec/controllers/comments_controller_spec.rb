require "rails_helper"

RSpec.describe CommentsController, type: :controller do
  let(:user) { User.create(email: "test@text.com", password: "root123", password_confirmation: "root123") }

  before do
    sign_in user
  end

  describe "POST #create" do
    before do
      @post = Post.create(content: "test", user_id: user.id)
    end

    it "returns http success" do
      post :create, params: { comment: { content: "test" }, user_id: user.id, post_id: @post.id }
      expect(response).to have_http_status(302)
    end

  end
end
