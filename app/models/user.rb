class User < ApplicationRecord
  has_many :reviews
  has_many :coffees, through: :reviews
  # accepts_nested_attributes_for :coffee
  has_secure_password
end
