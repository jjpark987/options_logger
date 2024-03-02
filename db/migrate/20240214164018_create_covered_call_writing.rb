class CreateCoveredCallWriting < ActiveRecord::Migration[7.1]
  def change
    create_table :covered_call_writing do |t|
      t.boolean :is_margin_account
      t.string :ticker
      t.float :init_stock_price
      t.integer :shares
      t.float :strike
      t.float :premium
      t.date :expiration
      t.integer :contracts
      t.float :dividends
      t.float :current_stock_price
      t.date :closed_at

      t.timestamps
    end
  end
end
