class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name
      t.text :description
      t.date :date
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
