class Book < ApplicationRecord
  belongs_to :author
  has_and_belongs_to_many :categories
  
  def cat
    category_id
  end
end
