class User < ApplicationRecord
  has_many :reviews
  has_many :reviewed_coffees, through: :reviews, source: :coffee

  has_many :coffees

  has_secure_password

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true, allow_nil: true
  validates :profile_img, presence: true

end
