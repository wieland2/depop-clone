class AddSoldToPurchases < ActiveRecord::Migration[7.0]
  def change
    add_column :purchases, :sold, :boolean, default: false
  end
end
