class Review < ApplicationRecord
  belongs_to :user
  belongs_to :coffee

  validates :title, :rating, :description, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 10 }
  validates :description, length: { minimum: 5}
  validates :coffee, uniqueness: { scope: :user, message: "Has Already Been Reviewed By You." }
end
