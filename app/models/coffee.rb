class Coffee < ApplicationRecord
  belongs_to :user
  has_many :reviews

  has_many :users, through: :reviews

  validates :title, :brand, :roast_level, :description, :caffeine_content, presence: true
  validates :roast_level, inclusion: { in: %w(light medium dark), message: "%{value} is not a valid roast level" }
  validates :caffeine_content, inclusion: { in: %w(low medium high ), message: "%{value} is not a valid roast level" }
  validates :title, uniqueness: { message: "has already been added.", case_sensitive: false }

  scope :alphabetical, -> { order('name ASC') }

  def self.sorted_coffees
    @coffee = Coffee.all.sort{ |coffee| coffee.reviews.length }
  end
end
