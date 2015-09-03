class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.decimal :amount
      t.integer :tracking_id

      t.timestamps null: false
    end
    add_index :purchases, :tracking_id, unique: true
  end
end
