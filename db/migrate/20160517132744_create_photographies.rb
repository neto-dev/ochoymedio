class CreatePhotographies < ActiveRecord::Migration
  def change
    create_table :photographies do |t|
      t.string :name
      t.text :description
      t.text :url_image
      t.references :catalog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
