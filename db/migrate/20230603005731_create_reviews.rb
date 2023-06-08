class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.integer :reviewer_id
      t.integer :reviewed_id
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
