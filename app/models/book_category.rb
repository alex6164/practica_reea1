class BookCategory < ApplicationRecord
def change
 
    create_table :book_category, id: false do |t|
      t.belongs_to :book, index: true
      t.belongs_to :category, index: true
    end
  end
end
