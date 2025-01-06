class Profile < ApplicationRecord
  belongs_to :user

  validates :bio, length: { maximum: 500 }
end
