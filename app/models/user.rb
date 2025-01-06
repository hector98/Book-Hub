class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy

  # User can follow other users
  has_many :active_follows, class_name: "Follow", foreign_key: "follower_id", dependent: :destroy
  has_many :following, through: :active_follows, source: :user

  # Users can be followed by other users
  has_many :passive_follows, class_name: "Follow", foreign_key: "user_id", dependent: :destroy
  has_many :followers, through: :passive_follows

  after_create :create_profile

  private

  def create_profile
    Profile.create(user: self)
  end
end
