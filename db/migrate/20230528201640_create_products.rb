class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :size
      t.string :brand
      t.string :condition
      t.string :gender
      t.string :styles
      t.string :colours
      t.string :category
      t.float  :price
      t.string :title
      t.text   :description
      t.float  :shipping, default: 0
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
