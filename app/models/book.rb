class Book < ApplicationRecord
  belongs_to :author
  has_and_belongs_to_many :categories
  validates :title, presence: true
  validates :body, presence: true

 # before_save :update_categories_count
#
  #private

  	#def update_categories_count
  	#	categories.each do |category|
  	#		category.update(books_count: category.books.count)
  	#	end
  	#end
end
