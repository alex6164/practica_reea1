class AddFullNameToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :full_name, :string
  end
end
