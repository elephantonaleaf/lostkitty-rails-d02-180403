class Pet < ApplicationRecord
  validates :name, presence: true
  category=["dog", "cat"]
  validates :category, inclusion: {in: category}
end
