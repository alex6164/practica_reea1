class Category < ApplicationRecord
  has_and_belongs_to_many :books
  validates :title, presence: true
  validates :title, length: { minimum: 1 }
end
