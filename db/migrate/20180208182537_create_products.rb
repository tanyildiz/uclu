class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :price
      t.string :string
      t.integer :tag_id
      t.integer :category_id

      t.timestamps
    end
  end
end
