class User < ApplicationRecord
  has_many :reviews
  has_many :coffees, through: :reviews
  # accepts_nested_attributes_for :coffee
  has_secure_password

  validates :name, presence: true
  validates :email, format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }
  validates :profile_img, presence: true
end
