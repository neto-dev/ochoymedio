class AddCategoryIdToPhotographies < ActiveRecord::Migration
  def change
  	add_column :photographies, :category_id, :integer
    add_index :photographies, :category_id
  end
end
