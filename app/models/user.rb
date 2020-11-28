class User < ApplicationRecord
  has_many :reviews
  has_many :coffees, through: :reviews
end
