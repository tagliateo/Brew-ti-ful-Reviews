class Coffee < ApplicationRecord
  belongs_to :user
  has_many :reviews

  has_many :users, through: :reviews

  validates :title, :brand, :roast_level, :description, :caffeine_content, presence: true
  validates :title, uniqueness: { message: "has already been added.", case_sensitive: false }

  scope :alphabetical, -> { order('name ASC') }
  # accepts_nested_attributes_for :review
end
