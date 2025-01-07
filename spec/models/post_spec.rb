require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = User.create(email: "test@text.com", password: "root123", password_confirmation: "root123")
  end

  context "create new post" do
    it "is valid with valid attributes" do
      post = Post.new(content: "test", user_id: @user.id)
      expect(post).to be_valid
    end

    it "is not valid without a content" do
      post = Post.new(content: nil, user_id: @user.id)
      expect(post).to_not be_valid
    end
  end

  context "update post" do
    it "is valid with valid attributes" do
      post = Post.new(content: "test", user_id: @user.id)
      expect(post).to be_valid
    end
  end

  context "destroy post" do
    it "is valid with valid attributes" do
      post = Post.new(content: "test", user_id: @user.id)
      expect(post).to be_valid
    end
  end
end
