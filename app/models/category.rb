class Category < ApplicationRecord
has_and_belongs_to_many :books
  def c
    category
  end

end
