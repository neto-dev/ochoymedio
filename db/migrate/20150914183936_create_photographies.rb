class CreatePhotographies < ActiveRecord::Migration
  def change
    create_table :photographies do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :categories, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
